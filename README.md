# Lab Environments (IaC)

This repository provides a modular Infrastructure-as-Code (IaC) framework for deploying reproducible virtualized research environments using Vagrant and VMware Workstation.

## Framework Architecture

The repository is structured to separate base configurations from project-specific logic:

* **common-scripts/**: Global provisioning scripts (e.g., development environment setup, common tools) shared across multiple projects.
* **templates/**: Baseline Vagrantfiles for various operating systems. These serve as verified starting points for new projects.
* **projects/**: Discrete lab environments. Each project directory contains a Vagrantfile that orchestrates specific network and node configurations.

## Prerequisites

The following components must be installed on the host system:

1. VMware Workstation Pro/Player.
2. Vagrant (`winget install Hashicorp.Vagrant`).
3. Vagrant VMware Utility.
4. Vagrant VMware Desktop Plugin (`vagrant plugin install vagrant-vmware-desktop`).

## Configuration

### Environment Variables
To manage storage efficiently, the `VAGRANT_HOME` variable should be set to point to a drive with sufficient capacity for virtual machine images:

```powershell
[System.Environment]::SetEnvironmentVariable("VAGRANT_HOME", "D:\Programs\Vagrant\home", "User")
```

## Usage

Navigate to the desired project directory:
`cd projects/CyberRange`

Initialize and provision the environment:
`vagrant up`

Access a specific node via SSH:
`vagrant ssh <machine_name>`

## Maintenance

Update Boxes: `vagrant box update`

Resource Cleanup: `vagrant destroy` (Deletes instances while keeping the project configuration intact).

Prune Metadata: `vagrant global-status --prune`
