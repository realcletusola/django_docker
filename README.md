# Django Docker App

This repository contains the source code for a Django web application, containerized using Docker. The application is configured to run in a Docker container with all necessary dependencies, including the web server and database (if applicable). The app can be easily built, deployed, and run in a local or production environment using Docker Compose.

<h2>Features:</h2>
Django Framework: A robust, scalable web framework for building the application.
Docker: Containerized environment for consistent setup across different systems and easy deployment.
Environment Configuration: Sensitive settings (like SECRET_KEY and DEBUG) are securely handled via environment variables in a .env file.
Docker Compose: Simplified multi-container orchestration for local development and testing.

<h2>Setup:</h2>
Clone this repository.
Ensure that Docker and Docker Compose are installed.
Create a .env file with the required environment variables.
Run docker-compose up --build to start the application.

<h2>Environment Variables:</h2>
SECRET_KEY: Django secret key for application security.
DEBUG: Set to True for development and False for production.
ALLOWED_HOSTS: List of valid host/domain names that can access the application.