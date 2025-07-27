# 🚀 Backend API con FastAPI + PostgreSQL + Docker

Este proyecto es una API RESTful desarrollada con **FastAPI**, que conecta a una base de datos **PostgreSQL** y está preparada para desplegarse en un contenedor Docker. Incluye autenticación JWT, CORS, validación con Pydantic y es fácilmente integrable con frontends como **Reflex** o cualquier SPA.

---

## 🧰 Tecnologías principales

- **FastAPI** – Framework moderno, rápido y eficiente
- **PostgreSQL** – Base de datos relacional robusta
- **Docker** – Contenerización para despliegue multiplataforma
- **SQLAlchemy** – ORM para manipular la base de datos
- **Pydantic** – Validación y serialización de datos
- **JWT** – Seguridad con tokens
- **Uvicorn** – Servidor ASGI liviano
- **CORS Middleware** – Protección contra orígenes cruzados

---

## 📁 Estructura del proyecto

📁 app/  
├── main.py # Punto de entrada FastAPI  
├── models.py # Modelos ORM  
├── schemas.py # Esquemas Pydantic  
├── crud.py # Operaciones con la DB  
├── db.py # Conexión DB  
├── security.py # Lógica de JWT y seguridad  
├── routes/  
│ ├── auth.py # Autenticación (login, register)  
│ └── users.py # CRUD de usuarios  
├── config.py # Configuración de entorno  
📄 requirements.txt # Dependencias  
📄 Dockerfile # Imagen del contenedor  
📄 .env # Variables de entorno  


---

## 🧪 Requisitos previos

- Tener instalado [Docker](https://docs.docker.com/get-docker/)
- Tener `git` instalado

---

## 🛠️ Instalación y ejecución con Docker

### 1. Clonar el repositorio

```bash
git clone https://github.com/victorlimon/microweb-basico
cd microweb-basico
```

### 2. Crear archivo `.env`

#### Copia este contenido y ajústalo:

```env
# === PostgreSQL ===
POSTGRES_USER=fastapi_user
POSTGRES_PASSWORD=TuPasswordSuperSeguro!123
POSTGRES_DB=fastapi_db
POSTGRES_HOST=postgres

# === FastAPI ===
API_ENV=production
SECRET_KEY=09d25e094faa6ca2556c818166b7a9563b93f7099f6f0f4caa6cf63b88e8d3e7
ALGORITHM=HS256
ACCESS_TOKEN_EXPIRE_MINUTES=0
```
### 3. Construir los servicios con Docker Compose

```bash
docker-compose up --build
```

### 4. Uso

    Accede a la documentación automática de FastAPI en:

    http://localhost:8000/docs

    Usa esta interfaz para probar los endpoints y validar el correcto funcionamiento.

