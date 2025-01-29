# GoReleaser Multi-Arch Docker Images

This repository demonstrates how to use **GoReleaser** to build and publish **multi-architecture Docker images** with **GitHub Actions**.

## Overview

GoReleaser automates the build and release process for Go projects. This setup allows you to:
- Build multi-architecture binaries (`linux/amd64`, `linux/arm64`, etc.)
- Package them into a Docker image
- Push images to GitHub Container Registry (GHCR)
- Automate releases using GitHub Actions

## Blog Article

For a detailed walkthrough of this setup, check out the accompanying blog post:
[Effortless Multi-Arch Docker Images with GoReleaser and GitHub Actions](https://schoenwald.aero/posts/2025-01-25_effortless-multi-arch-docker-images-with-goreleaser-and-github-actions/)

## Repository Structure

```
├── .github/workflows/release.yaml   # GitHub Actions CI/CD workflow
├── .goreleaser.yaml                 # GoReleaser configuration
├── Dockerfile                        # Docker container setup
├── helloworld/                       # Go application
│   ├── main.go                       # Sample Go application
└── README.md                         # This file
```

## Getting Started

### Prerequisites
Ensure you have the following installed:
- **Go** (latest stable version)
- **Docker** or **Podman** (for containerization)
- **GoReleaser** ([installation guide](https://goreleaser.com/install/))
- **GitHub CLI** (optional, for local testing)

### Clone the Repository

```sh
git clone https://github.com/0hlov3/goreleaser-multi-arch-docker.git
cd goreleaser-multi-arch-docker
```

### Running Locally
To test GoReleaser locally without publishing, run:
```sh
goreleaser release --snapshot --rm-dist
```

This will build the binaries and container images locally.

### Creating a Release
To trigger a release using GitHub Actions:
1. Update the version tag (e.g., `v1.0.0`).
2. Push the tag to GitHub:
   ```sh
   git tag v1.0.0
   git push origin v1.0.0
   ```

This will trigger the GitHub Actions workflow, build the multi-arch Docker images, and push them to GHCR.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contributions

Feel free to open issues or pull requests to improve this repository!

