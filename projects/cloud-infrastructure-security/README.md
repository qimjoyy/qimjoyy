# Cloud Infrastructure Security and Access Control

![Google Cloud](https://img.shields.io/badge/Google_Cloud-Cloud_Infrastructure-4285F4?style=flat&logo=googlecloud&logoColor=white)
![Security](https://img.shields.io/badge/Focus-Cloud_Security-8B5CF6?style=flat)
![IAM](https://img.shields.io/badge/IAM-Least_Privilege-0F766E?style=flat)
![Firewall](https://img.shields.io/badge/Network-VPC_Firewall-F97316?style=flat)

## Overview

This mini project was completed for **NMK40103 Network Security Technology** at **Universiti Malaysia Perlis (UniMAP)**.

The project, titled **Cloud Infrastructure Security and Access Control**, demonstrates how a Google Cloud Platform environment can be secured using layered controls across the network, identity, and host layers.

The implementation focused on securing a Google Cloud VM while maintaining controlled web and administrative access. The project applied a **Defense-in-Depth** approach using VPC firewall rules, network tags, SSH restrictions, Identity-Aware Proxy (IAP), IAM least-privilege access, and automated Apache web-server provisioning.

## Objectives

- Deploy a virtual machine infrastructure on Google Cloud Platform.
- Apply granular network security controls using VPC firewall rules.
- Restrict administrative SSH access instead of relying on broad public access.
- Use network tags to apply firewall policies to specific workloads.
- Configure Identity-Aware Proxy (IAP) for controlled browser-based SSH access.
- Apply the Principle of Least Privilege through Google Cloud IAM.
- Automate Apache web-server provisioning using a Bash startup script.
- Verify that authorized connections succeed while unauthorized access is blocked.

## Technologies and Security Controls

| Technology / Control | Purpose |
| --- | --- |
| Google Cloud Platform | Cloud infrastructure platform |
| Compute Engine VM | Hosted server workload |
| VPC Firewall Rules | Network traffic filtering |
| Network Tags | Targeted firewall policy application |
| SSH | Administrative remote access |
| Identity-Aware Proxy (IAP) | Controlled browser-based SSH access |
| IAM | Identity and authorization management |
| Compute Viewer | Read-only infrastructure access for a secondary user |
| Bash Startup Script | Automated server provisioning |
| Apache | Web-server workload |

## Architecture and Security Model

The project used layered security controls rather than relying on a single security mechanism:

```text
                         Internet
                            |
                  +---------+---------+
                  |   VPC Firewall    |
                  |   Rules / Tags    |
                  +---------+---------+
                            |
                    +-------v-------+
                    | Google Cloud  |
                    |   VM Instance  |
                    +-------+-------+
                            |
              +-------------+-------------+
              |                           |
       +------v------+             +------v------+
       | Apache Web  |             | SSH / IAP   |
       |   Server    |             | Access Path |
       +-------------+             +-------------+
              |
       Startup Script
       Automated Setup

IAM controls which identities are authorized to manage or audit the infrastructure.
```

> The diagram above is a simplified representation of the security architecture based on the project implementation documented in the mini-project report.

## Implementation

### 1. Google Cloud VM Configuration

A virtual machine instance was configured in Google Cloud Platform as the infrastructure host. The configuration included the machine type, operating system, networking settings, and security-related options.

### 2. Network Tag-Based Filtering

A dedicated **web-server network tag** was used so that firewall policies could target the intended workload instead of being applied broadly to every instance.

This demonstrates granular policy enforcement at the network level.

### 3. Public Web Access

A VPC firewall rule was configured to permit the required web traffic to the web-server workload. The firewall policy was associated with the relevant network tag.

### 4. SSH Security

The insecure default-allow-SSH approach was removed and replaced with a custom administrative SSH rule named **`allow-ssh-admin`**.

The objective was to prevent unrestricted SSH access from the public internet and enforce an explicit administrative access policy.

### 5. Identity-Aware Proxy (IAP)

Browser-based SSH access through Google Cloud IAP was configured with firewall handling for Google's IAP tunnel range:

```text
35.235.240.0/20
```

This allowed browser-based administrative access to be explicitly controlled by the firewall policy.

### 6. IAM Least Privilege

A secondary user was assigned the **Compute Viewer** role.

This provided audit/read access to the infrastructure while preventing the user from performing higher-risk administrative actions such as modifying firewall rules or terminating instances.

This implementation demonstrates the **Principle of Least Privilege** and separation of duties.

### 7. Automated Apache Deployment

Instead of manually installing and configuring the Apache web server, a **Bash-based startup script** was used to automate provisioning when the VM started.

The automation made the deployment reproducible and reduced the possibility of human configuration errors.

## Security Verification

The project included verification of both successful authorized access and blocked unauthorized access.

### Authorized Access

The configured access path successfully established an authorized connection to the cloud infrastructure.

### Unauthorized Access

Unauthorized SSH access attempts were blocked by the implemented network security controls.

This demonstrated that the custom firewall and access-control policies were functioning as intended.

## Security Principles Demonstrated

### Defense in Depth

Security was implemented across multiple layers rather than relying on one control:

1. **Network security** - VPC firewall rules and targeted network tags.
2. **Identity security** - IAM roles and least-privilege access.
3. **Host security / automation** - controlled VM provisioning through a startup script.

### Principle of Least Privilege

The secondary user received only the permissions required for infrastructure observation and auditing.

### Explicit Access Control

Default broad SSH access was replaced with a specific administrative rule and controlled IAP access.

### Automation and Reproducibility

The Bash startup script reduced manual configuration and allowed the web server to become operational automatically after VM startup.

## Results

The implementation demonstrated that the cloud environment could:

- Provide the required web-server functionality.
- Apply firewall policies to targeted workloads.
- Restrict administrative SSH access.
- Support controlled browser-based SSH through IAP.
- Separate infrastructure audit permissions from administrative permissions.
- Automatically provision the Apache web server.
- Block unauthorized SSH access attempts.

The project concluded that combining network controls, identity controls, and automated host configuration produced a more resilient cloud security posture.

## Key Learning Outcomes

Through this project, I gained practical experience with:

- Cloud network security
- VPC firewall configuration
- Network-based access control
- SSH security
- Identity-Aware Proxy
- Google Cloud IAM
- Least-privilege access design
- Linux/Bash automation
- Apache web-server deployment
- Security verification and access testing
- Defense-in-Depth security architecture

## Project Evidence

The original project report contains screenshots documenting the implementation and verification process, including:

- VM instance configuration
- Machine type and provisioning model
- Operating system selection
- Network tagging
- Shielded VM and API access
- Automated infrastructure deployment
- Data encryption and deletion protection
- Public web access firewall rule
- Target-based traffic filtering
- Administrative SSH whitelisting
- IP-restricted SSH access
- IAM role assignment
- Browser-based SSH through IAP
- Automated web-server success
- Successful authorized connection
- Unauthorized access blocked

## Academic Project Information

**Course:** NMK40103 Network Security Technology  
**Project:** Mini Project - Cloud Infrastructure Security and Access Control  
**Institution:** Universiti Malaysia Perlis (UniMAP)  
**Faculty:** Faculty of Electronic Engineering Technology  
**Lecturer:** Ts. Siti Azura Abuzar  

**Team Members:**

- Naqimuddin Aqil Bin Burhanuddin
- Muhamad Nabil Bin Azlan
- Muhammad Amirul Tasnim Bin Md Fuazi

## Reference

The implementation documented here is based on the submitted Network Security Technology mini-project report. The project report also contains the demonstration video link provided for the assignment.

> **Note:** This repository documents an academic cloud-security project. No production credentials, secrets, or private infrastructure configuration should be committed to the repository.
