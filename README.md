# 🧠 Codesys Virtual PLC 🐳

A lightweight Docker Compose setup to run a **Codesys Virtual PLC** on a **Debian/Ubuntu-based system**, ideal for rapid prototyping, integration testing, and edge deployment scenarios.

---

## 🚀 Overview

This project provides a containerized environment for running a **Codesys Control for Linux (x64)** runtime as a virtual PLC. It’s designed for engineers, architects, and system integrators working with industrial automation and digital transformation use cases.

> ✅ Compatible with Ubuntu 20.04+, Debian 10+, and ARM64/AMD64 hosts (w/ experimental support for ARM).

---

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
