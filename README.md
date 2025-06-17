# 📘 DevOps Study Planner - Go Web App

A containerized, production-ready **Study Planner** built with Golang and deployed using a full-fledged **DevOps pipeline**. This project simulates how real-world DevOps practices come together — from containerization to CI/CD automation and scalable cloud deployments.

---

## 🚀 Features

- 🐳 **Dockerized** Go Web App with multi-stage builds
- ☸️ **Kubernetes (EKS)** deployment using Helm charts
- 🔁 **CI with GitHub Actions** for automated testing and build
- 🚀 **CD with Argo CD** for GitOps-based deployment
- 🌐 **AWS ALB Ingress Controller** for public DNS routing
- 🔐 Secrets management via Kubernetes and `.env` files
- 📊 Kubernetes probes and Helm test hooks for app health
- 📦 Clean directory structure with Helm chart templating
- ⚙️ Makefile for automation of repetitive DevOps tasks

---

## 🛠️ Tech Stack

- **Backend**: Golang
- **Containerization**: Docker (multi-stage)
- **Orchestration**: Kubernetes (AWS EKS)
- **CI/CD**: GitHub Actions + Argo CD
- **Package Management**: Helm
- **Infrastructure**: AWS EC2, IAM, ALB
- **Ingress Management**: AWS ALB Ingress Controller

---

## 📂 Folder Structure

```bash
go-web-app/
│
├── static/                     # Static HTML/CSS assets
├── main.go                    # Entry point for the Go application
├── Dockerfile                 # Multi-stage Docker build
├── helm/
│   └── go-web-app-chart/      # Helm charts for Kubernetes deployment
├── k8s/
│   └── manifests/             # Kubernetes YAMLs
├── .github/workflows/         # GitHub Actions pipeline
└── README.md
