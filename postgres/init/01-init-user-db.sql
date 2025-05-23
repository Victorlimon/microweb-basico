-- Eliminar usuarios y bases predeterminadas
DROP DATABASE IF EXISTS postgres;
DROP ROLE IF EXISTS postgres;

-- Crear usuario de aplicación con privilegios mínimos
CREATE ROLE fastapi_user WITH
  LOGIN
  NOSUPERUSER
  NOCREATEDB
  NOCREATEROLE
  NOINHERIT
  CONNECTION LIMIT 50
  PASSWORD 'TuPasswordSuperSeguro!123';

-- Crear base de datos principal
CREATE DATABASE fastapi_db
  OWNER admin_root
  ENCODING 'UTF8'
  LC_COLLATE 'C'
  LC_CTYPE 'C'
  TEMPLATE template0;

-- Revocar privilegios públicos
REVOKE ALL ON DATABASE fastapi_db FROM PUBLIC;
REVOKE CREATE ON SCHEMA public FROM PUBLIC;

-- Configurar privilegios específicos
GRANT CONNECT ON DATABASE fastapi_db TO fastapi_user;
GRANT USAGE ON SCHEMA public TO fastapi_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO fastapi_user;

-- Configurar seguridad de autenticación
ALTER SYSTEM SET password_encryption = 'scram-sha-256';  -- Autenticación fuerte
#ALTER SYSTEM SET ssl = 'on';  # Forzar SSL
#ALTER SYSTEM SET shared_preload_libraries = 'pg_stat_statements, pgaudit';  -- Auditoría