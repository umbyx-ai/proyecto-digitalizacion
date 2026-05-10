# 🔧 Sistema de Gestión de Citas — Taller Mecánico

Sistema de digitalización para la gestión de clientes, vehículos y citas de un taller mecánico. Incluye una API REST, una base de datos y una interfaz web, todo desplegado con Docker.

---

## 📋 Requisitos previos

Antes de empezar, asegúrate de tener instalado:

- [Docker Desktop](https://www.docker.com/products/docker-desktop/) (Windows/Mac) o Docker Engine (Linux)
- [Git](https://git-scm.com/) o Git Bash

---

## 📁 Estructura del proyecto

```
proyecto-digitalizacion/
├── api/
│   ├── app.py
│   ├── Dockerfile
│   └── requirements.txt
├── web/
│   ├── index.html
│   ├── css/
│   └── js/
├── scripts/
│   ├── backup.sh
│   └── check_services.sh
├── db_schema.sql
└── docker-compose.yml
```

---

## 🚀 Cómo desplegar el proyecto

### 1. Clonar el repositorio

```bash
git clone https://github.com/umbyx-ai/proyecto-digitalizacion.git
cd proyecto-digitalizacion
```

### 2. Arrancar los contenedores

```bash
docker-compose up --build -d
```

Esto levantará automáticamente 3 contenedores:
- **db** → Base de datos MariaDB
- **api** → API REST en Python/Flask
- **web** → Interfaz web servida con Nginx

### 3. Comprobar que todo funciona

- Web: [http://localhost:8081](http://localhost:8081)
- API (vehículos): [http://localhost:5000/vehicles](http://localhost:5000/vehicles)
- API (citas): [http://localhost:5000/appointments](http://localhost:5000/appointments)

---

## 🛑 Parar el proyecto

```bash
docker-compose down
```

---

## 💾 Backup de la base de datos

Para generar una copia de seguridad manual:

```bash
bash scripts/backup.sh
```

Se generará un archivo `backup_YYYY-MM-DD.sql` en la carpeta `scripts/`.

---

## ✅ Comprobar el estado de los servicios

```bash
bash scripts/check_services.sh
```

---

## 👥 Autores

- **Izan Barrasa** — Backend, API, Docker, Scripts
- **Martí Pino** — Frontend, Web
