# Etapa 1: Instalación de dependencias
FROM node:18 AS build

# Crear un directorio de trabajo
WORKDIR /app

# Copiar los archivos de configuración (package.json y package-lock.json)
COPY package*.json ./

# Instalar las dependencias de producción
RUN npm install --production

# Etapa 2: Construcción de la imagen final de producción
FROM node:18-slim

# Crear un directorio de trabajo en la imagen final
WORKDIR /app

# Copiar las dependencias instaladas desde la etapa anterior
COPY --from=build /app/node_modules ./node_modules

# Copiar el resto de la aplicación
COPY . .

# Exponer el puerto en el que corre la aplicación
EXPOSE 3000

# Definir el comando por defecto para ejecutar la aplicación
CMD ["npm", "start"]
