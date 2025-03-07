# AWS Cognito Infrastructure with Terraform

This repository contains a well-structured Terraform configuration for deploying and managing AWS Cognito resources. It provides a secure and scalable authentication infrastructure using AWS Cognito User Pools and App Clients.

## Project Overview

The infrastructure is designed with a modular approach, separating different components of the Cognito setup for better maintainability and scalability. The configuration creates a complete authentication system that can be easily integrated into your applications.

### Features

- **Cognito User Pool**
  - Email-based authentication
  - Automatic email verification
  - Customizable user attributes
  - Secure user management

- **App Client Configuration**
  - Configurable authentication flows
  - Token validity settings
    - Access Token: 1 hour
    - ID Token: 1 hour
    - Refresh Token: 5 days
    - Auth Session: 3 minutes
  - User existence error prevention
  - Support for multiple authentication flows:
    - User Password Authentication
    - User SRP (Secure Remote Password) Authentication
    - Refresh Token Authentication

### Project Structure

```
.
├── main.tf              # Main Terraform configuration
├── variables.tf         # Variable definitions
├── outputs.tf          # Output definitions
├── modules/
│   ├── userPool/      # User Pool configuration
│   └── appClient/     # App Client configuration
```

### Configuration

The infrastructure is configured for the Sydney region (ap-southeast-2) and uses AWS provider version 5.0. All components are customizable through variables defined in `variables.tf` and can be overridden using `terraform.tfvars`.

### Usage

1. Clone this repository
2. Update the `terraform.tfvars` with your AWS credentials and desired configuration
3. Initialize Terraform: `terraform init`
4. Review the changes: `terraform plan`
5. Apply the configuration: `terraform apply`

### Security Considerations

- Email verification is enabled by default
- Secure token management with configurable expiration times
- User existence errors are prevented for enhanced security
- Authentication flows are explicitly defined and controlled 