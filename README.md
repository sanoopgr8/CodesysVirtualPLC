# 🧠 Codesys Virtual PLC 🐳

A lightweight Docker Compose setup to run a **Codesys Virtual PLC** on a **Debian/Ubuntu-based system**, ideal for rapid prototyping, integration testing, and edge deployment scenarios.

---

## 🚀 Overview

This project provides a containerized environment for running a **Codesys Control for Linux (x64)** runtime as a virtual PLC. It’s designed for engineers, architects, and system integrators working with industrial automation and digital transformation use cases.

> ✅ Compatible with Ubuntu 20.04+, Debian 10+, and ARM64/AMD64 hosts (w/ experimental support for ARM).

---
### 🛠️ Prerequisites

Before starting, ensure your host system has the following installed:

- **Operating System**:  
  - [Ubuntu 20.04+](https://docs.docker.com/engine/install/ubuntu/)
  - [Debian 10+](https://docs.docker.com/engine/install/debian/)

- **Docker Engine**:  
  Follow the official installation instructions for your OS:
  - [Install Docker on Ubuntu](https://docs.docker.com/engine/install/ubuntu/)
  - [Install Docker on Debian](https://docs.docker.com/engine/install/debian/)

- **Docker Compose (v2 or higher)**:  
  Docker Compose v2 is included in recent Docker versions.  
  To check:
  ```bash
  docker compose version
- **Codesys Virtual PLC Runtime**:
  Download the desired Codesys Virtual Control SL version from [Codesys Store](https://store.codesys.com/en/codesys-virtual-control.html) on to your Windows machine. 
  Exract the content from the package file navigate to \CODESYS Virtual Control for Linux SL <Your version#>\Delivery to access the images of various architecture
  Here is an example for arm64 based target machine:
  ![image](https://github.com/user-attachments/assets/6a44de7f-2413-4e04-91e7-8e18efe0a5f3)
  Transfer the file Docker_codesyscontrol_virtuallinuxarm64_<Your version#>_arm64.tar.gz to the target machine where you would like to run the VirtualPLC (in this case an arm64 environment)

  Run following command to install the image
  ```bash
  sudo docker load < Docker_codesyscontrol_virtuallinuxarm64_<Your version#>_arm64.tar.gz

Adjust the file name per the architecutre and version you choose for your target system. This would load the Codesys Virtual PLC runtime image on your docker engine. Now you can use the Docker Compose file to create new Virtual PLC instance in your Target host. Simply clone this repo and adjust the Compose file per your need. 

## 🏗️ Architecture

```mermaid
graph LR
    DevMachine[Development PC]
    CodesysIDE[Codesys IDE]
    DockerHost[Ubuntu/Debian Host]
    Container[Codesys PLC Runtime in Docker]
    OPCUA[OPC UA Server]
    WebVisu[WebVisu / HMI]

    DevMachine -->|Deploy App| DockerHost
    CodesysIDE -->|Login & Download| Container
    Container --> OPCUA
    Container --> WebVisu
