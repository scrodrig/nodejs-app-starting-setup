# Node.js App Starting Setup

This repository contains the starting setup for a Node.js application using Docker.

## Prerequisites

- Docker
- Docker Compose

## Getting Started

Follow these instructions to get the project up and running on your local machine.

### Clone the Repository

```sh
git clone https://github.com/yourusername/nodejs-app-starting-setup.git
cd nodejs-app-starting-setup
```

### Build the Docker Image

```sh
docker build -t nodejs-app .
```

### Run the Docker Container

```sh
docker run -d -p 3000:80 nodejs-app
```

### Access the Application

Open your web browser and go to `http://localhost:3000`.

## Dockerfile

Below is a brief explanation of the Dockerfile used in this project:

```Dockerfile
# Use the official Node.js image as the base image
FROM node:14

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Command to run the application
CMD ["node", "app.js"]
```