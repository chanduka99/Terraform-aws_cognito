# AWS Cognito Infrastructure with Terraform

This repository provides a modular Terraform configuration for deploying AWS Cognito resources, focusing on secure user authentication and management. The infrastructure is designed to be easily integrated into your applications while maintaining best practices for security and scalability.

## Project Overview

The infrastructure uses a modular approach to manage AWS Cognito resources, with separate modules for User Pools and App Clients. This separation allows for better maintainability and easier updates to individual components.

### Core Components

#### Cognito User Pool
- **Authentication Settings**
  - Email-based authentication (email as username)
  - Automatic email verification enabled
  - Customizable user pool name
  - Built-in security features

#### App Client Configuration
- **Token Management**
  - Access Token validity: 1 hour
  - ID Token validity: 1 hour
  - Refresh Token validity: 5 days
  - Auth Session validity: 3 minutes

- **Authentication Flows**
  - User Password Authentication (ALLOW_USER_PASSWORD_AUTH)
  - Secure Remote Password Authentication (ALLOW_USER_SRP_AUTH)
  - Refresh Token Authentication (ALLOW_REFRESH_TOKEN_AUTH)
  - User Authentication Flow (ALLOW_USER_AUTH)

- **Security Features**
  - User existence errors prevention enabled
  - No client secret generation
  - Configurable authentication flow permissions

### Project Structure
```
.
├── main.tf                # Main configuration and module orchestration
├── variables.tf           # Input variable definitions
├── outputs.tf            # Output value definitions
├── terraform.tfvars      # Variable values configuration
├── modules/
│   ├── userPool/        # User Pool module
│   │   ├── main.tf      # User Pool resource definitions
│   │   ├── variables.tf # Module variables
│   │   └── outputs.tf   # Module outputs
│   ├── appClient/       # App Client module
│   │   ├── main.tf      # App Client resource definitions
│   │   ├── variables.tf # Module variables
│   │   └── outputs.tf   # Module outputs
│   ├── groups/          # User Groups module
│   │   ├── main.tf      # Group resource definitions
│   │   ├── variables.tf # Module variables
│   │   └── outputs.tf   # Module outputs
│   └── users/           # Users management module
│       ├── main.tf      # User resource definitions
│       ├── variables.tf # Module variables
│       └── outputs.tf   # Module outputs
```

### Configuration

- **Region**: Sydney (ap-southeast-2)
- **Provider**: AWS (version ~> 5.0)
- **Resource Naming**: Customizable through variables
- **Module Dependencies**: App Client depends on User Pool creation

### Usage

1. Clone this repository
2. Configure your AWS credentials and desired settings in `terraform.tfvars`:
   ```hcl
   access_key = "your-access-key"
   secret_key = "your-secret-key"
   ```
3. Initialize the Terraform working directory:
   ```bash
   terraform init
   ```
4. Review the planned changes:
   ```bash
   terraform plan
   ```
5. Apply the configuration:
   ```bash
   terraform apply
   ```

### Security Best Practices

- ✅ Email verification enabled by default
- ✅ Configurable token expiration times
- ✅ Protected against user enumeration attacks
- ✅ Explicit authentication flow controls
- ✅ Modular design for better security management 