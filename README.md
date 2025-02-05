# infra-template

## Ansible

This folder contains Ansible playbooks and related files.

### Usage

To use the Ansible playbooks in this folder, follow these steps:

1. Install Ansible:
   ```sh
   pip install ansible
   ```

2. Run the playbook:
   ```sh
   ansible-playbook main.yml
   ```

### Setup

Ensure you have the necessary permissions and access to the target hosts. Update the `hosts` file and any variables in the playbook as needed.

## Terraform

This folder contains Terraform configuration files for managing infrastructure as code.

### Usage

1. Install Terraform: Follow the instructions on the [Terraform website](https://www.terraform.io/downloads.html) to install Terraform on your machine.
2. Initialize the configuration: Run `terraform init` to initialize the configuration.
3. Plan the changes: Run `terraform plan` to see the changes that will be made.
4. Apply the changes: Run `terraform apply` to apply the changes.

### Documentation

For more information on Terraform, refer to the [official documentation](https://www.terraform.io/docs/index.html).

## InSpec

This folder contains InSpec profiles for testing and auditing your infrastructure.

### Usage

To use InSpec, follow these steps:

1. Install InSpec by following the instructions on the [InSpec website](https://www.inspec.io/downloads/).
2. Navigate to this folder in your terminal.
3. Run the InSpec tests using the following command:
   ```sh
   inspec exec .
   ```

### Setup

Ensure you have the necessary permissions and access to the infrastructure you want to test. Refer to the [InSpec documentation](https://www.inspec.io/docs/) for more details on setting up and using InSpec.
