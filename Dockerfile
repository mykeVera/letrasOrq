FROM php:8.2-cli

# Crear y usar carpeta de trabajo
WORKDIR /app

# Copiar todo el proyecto al contenedor
COPY . .

# Exponer el puerto que Render espera (10000)
EXPOSE 10000

# Comando para iniciar el servidor PHP embebido
CMD ["php", "-S", "0.0.0.0:10000", "-t", "."]

