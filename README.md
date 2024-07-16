# Workspace tools

This Ansible playbook provides tools and automated configuration for developers' workspaces.

## Requirements

- Python 3.x with the `venv` module (`apt install python3-venv`), Ansible does *not* need to be installed.
- The tools are installed system-wide, so administrative access is necessary.

## Features

The playbook locally executes the following [ECGALAXY](https://code.europa.eu/groups/ecgalaxy/-/wikis/home) Ansible roles:

- [bootstrap](https://code.europa.eu/ecgalaxy/bootstrap): updates package managers cache and prepares hosts for playbook execution
- [aws_cli](https://code.europa.eu/ecgalaxy/aws_cli): installs AWS CLI and Session Manager plugin
- [ca_certificates](https://code.europa.eu/ecgalaxy/ca_certificates): installs ca-certificates and adds CommisSign certificates to the trusted CAs list
- [common_packages](https://code.europa.eu/ecgalaxy/common_packages): installs common packages such as curl, git, unzip, wget
- [containers_toolbox](https://code.europa.eu/ecgalaxy/containers_toolbox): provides CLI tools used when working with containers and Kubernetes, such as dive, helm, kubectl
- [docker](https://code.europa.eu/ecgalaxy/docker): installs Docker
- [java_openjdk](https://code.europa.eu/ecgalaxy/java_openjdk): installs Java OpenJDK
- [maven](https://code.europa.eu/ecgalaxy/maven): installs Apache Maven
- [nodejs](https://code.europa.eu/ecgalaxy/nodejs): installs the Node.js programming language
- [oracle_instantclient](https://code.europa.eu/ecgalaxy/oracle_instantclient): installs Oracle Instant Client
- [php](https://code.europa.eu/ecgalaxy/php): installs the PHP programming language
- [task](https://code.europa.eu/ecgalaxy/task): installs Task, a task runner and build tool
- [terraform](https://code.europa.eu/ecgalaxy/terraform): installs HashiCorp Terraform, tflint and tfsec

Please check the above links for specific details.

## Usage

```
sudo ./exec.sh
```

## License

Copyright the European Union 2024.
Licensed under the EUPL-1.2 or later.

## Author Information

[ECGALAXY](https://code.europa.eu/groups/ecgalaxy/-/wikis/home) team.
