# Node.js Docker Example

A simple Node.js application containerized with Docker.

## Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Node.js](https://nodejs.org/) (for local development)
- [Git](https://git-scm.com/)

---

## Run with Docker

### Pull from Docker Hub

```bash
docker pull diven2030/first-nodedock-proj
docker run -p 9000:9000 diven2030/first-nodedock-proj
```

Open http://localhost:9000

### Build Locally

```bash
docker build -t first-nodedock-proj .
docker run -p 9000:9000 first-nodedock-proj
```

### Development Mode (with live reload)

```bash
docker run -p 9000:9000 -v "$(pwd):/app" first-nodedock-proj
```

### Run Locally (without Docker)

```bash
git clone <copied link>
cd node-example
npm install
npm start
```

## Useful Docker Commands

```bash
docker ps             # List running containers
docker stop <id>      # Stop container
docker rm <id>        # Remove container
docker rmi <image>    # Remove image
```

## Contributing

1. Fork the repo

2. Create a branch:

```bash
git checkout -b feature/my-feature
```

3. Commit changes:

```bash
git commit -m "Add my feature"
```

4. Push branch:

```bash
git push origin feature/my-feature
```

5. Open a Pull Request

## Project Structure

```
.
├── Dockerfile
├── .dockerignore
├── package.json
├── package-lock.json
├── src/
│   └── index.js
└── README.md
```
