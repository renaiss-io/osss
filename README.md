# Open source tools for startups

This repository contains the required artifacts to enable an easy and opinionated environment that consists on open source tools to manage operations.

## Tools available

- `Kimai`: time tracking tool.
- `OpenProject`: project management.
- `Planka`: project management, similar to trello.
- `Plane`: project management.

## Software used

### IdP

- `Keycloak`: identity management, developed and maintained by CNCF, used as the source of truth of users and access roles, and integrated with all the tools that support SSO. It can be integrated with a preexistent IdP.

### Network

- `Cert manager`: used to manage SSL certs used in the system.
- `Nginx`: used to create an nginx ingress to redirect traffic to specific apps.

### Monitoring

- `Grafana`: used to present health dashboards and configure alerts.
- `Loki`: used to store logs from the system.
- `Prometheus`: used to collect and store metrics from the system.
- `Promtail`: used to collect logs from the system.

# Develop

In order to develop, there are some system configuration to implement:

- Local cluster: a local k8s cluster using for example `minikube`.
- Local fake domain: a fake domain used to redirect to our cluster (default is `test.local`)
