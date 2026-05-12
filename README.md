# Enterprise Deployment Governance & DevOps Automation Platform

## Objective
This project demonstrates a secure enterprise DevOps workflow using GitHub Actions, Docker, SonarQube, Git/GitHub, and Open Policy Agent (OPA)/Conftest for deployment governance and CI/CD automation.

---

# Project Structure

```bash
enterprise-platform/
│
├── .github/workflows/
│   └── main.yml
│
├── services/
│   └── webapp/
│       ├── index.html
│       └── Dockerfile
│
├── configs/
│   ├── deployment.yml
│   └── docker-compose.yml
│
├── policies/
│   └── policy.rego
│
├── reports/
│   └── sonarqube/
│
├── artifacts/
│
├── pipelines/
│
├── logs/
│
└── README.md
```

---

# Technologies Used

- Git & GitHub
- GitHub Actions
- Docker & Docker Compose
- SonarQube
- Open Policy Agent (OPA)
- Conftest
- YAML
- Linux Commands

---

# Git Workflow

## Branches Used

- main
- feature-auth
- feature-monitoring
- staging
- production

## Git Operations Demonstrated

- branch creation
- merge
- merge conflict resolution
- stash
- rebase
- cherry-pick
- revert
- commit history visualization

---

# CI/CD Pipeline

GitHub Actions pipeline was configured for automated DevOps workflow.

## Pipeline Stages

1. Checkout Repository
2. Build Stage
3. Test Stage
4. SonarQube Scan
5. Policy Validation
6. Deployment Stage

Pipeline automatically triggers on push events to development branches.

---

# Docker Deployment

Docker Compose was used for deployment automation.

## Deployment Command

```bash
docker compose -f configs/docker-compose.yml up -d
```

---

# SonarQube Integration

SonarQube was integrated for static code analysis.

## Analysis Included

- Vulnerabilities
- Maintainability Issues
- Code Smells
- YAML Configuration Issues

Reports generated inside:

```bash
reports/sonarqube/
```

---

# OPA / Conftest Policy Validation

OPA policies were created to enforce secure deployment configurations.

## Security Policies Implemented

- Prevent latest image tags
- Enforce deployment labels
- Restrict insecure configurations

## Example Validation Command

```bash
conftest test configs/deployment.yml --policy policies/
```

---

# Deployment Validation Workflow

1. Developer pushes code
2. GitHub Actions pipeline starts
3. Build and testing stages execute
4. SonarQube performs analysis
5. OPA policies validate deployment files
6. Deployment executes only after successful validation

---

# Sample Policy Violation Demonstration

## Failed Deployment

```yaml
image: nginx:latest
```

Pipeline fails because latest image tags are restricted.

## Fixed Deployment

```yaml
image: nginx:1.25
```

Pipeline executes successfully after remediation.

---

# Outputs Generated

- GitHub Repository
- CI/CD Workflow
- SonarQube Reports
- OPA Policy Files
- Deployment Logs
- Validation Reports
- Docker Deployment Configuration

---

# Conclusion

This project successfully demonstrates enterprise DevOps automation using CI/CD pipelines, secure deployment governance, Git workflow management, SonarQube analysis, and OPA policy enforcement.