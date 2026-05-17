# Uly Dala Coffee — SRE Capstone Project

Production-ready infrastructure for the Uly Dala Coffee e-commerce platform.

## Stack

- **Application**: Node.js + Express + MongoDB Atlas
- **IaC**: Terraform (Docker provider)
- **CI/CD**: GitHub Actions
- **Orchestration**: Kubernetes (Minikube) + HPA
- **Observability**: Prometheus + Grafana + Alertmanager
- **Load Testing**: Locust

## Project Structure

```
.
├── terraform/          # Infrastructure as Code
├── k8s/                # Kubernetes manifests
├── monitoring/         # Prometheus, Grafana, Alertmanager
├── locust/             # Load testing scripts
├── .github/workflows/  # CI/CD pipeline
└── Dockerfile          # Container definition
```

## SLOs

| SLI | SLO Target |
|-----|-----------|
| Availability | 99.9% uptime |
| Latency | 95% of requests under 300ms |
| Error Rate | Less than 1% 5xx errors |

## Quick Start

### 1. Terraform
```bash
cd terraform
terraform init
terraform apply
```

### 2. Kubernetes
```bash
minikube start --driver=docker
minikube addons enable metrics-server
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/hpa.yaml
```

### 3. Monitoring
```bash
cd monitoring
docker-compose up -d
```

### 4. Load Testing
```bash
cd locust
locust -f locustfile.py --host=http://localhost:4000 --headless -u 100 -r 10 --run-time 2m
```
