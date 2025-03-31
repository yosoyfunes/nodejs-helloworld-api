# Node.js Helloworld API - Ejercicio de Integración y Despliegue

Esta aplicación es una API sencilla que retorna un mensaje de bienvenida. Además de su funcionalidad básica, se ha configurado un pipeline en Jenkins para integrar la instalación de dependencias, la ejecución de pruebas y el despliegue de la aplicación, incluyendo un health check.

## Requisitos Previos

- [Node.js](https://nodejs.org/) instalado (se utiliza el toolchain configurado en el pipeline)
- [npm](https://www.npmjs.com/) instalado
- [Jenkins](https://www.jenkins.io/) para la ejecución del pipeline

## Clonar el Repositorio

```bash
git clone https://github.com/yosoyfunes/nodejs-helloworld-api.git
```

## Instalación de Dependencias

Instala las dependencias necesarias:

```bash
npm install
```

## Ejecución de Pruebas

Se puede verificar el correcto funcionamiento de la aplicación mediante la ejecución de las pruebas:

```bash
npm test
```

## Ejecución de la Aplicación

Para poner en funcionamiento el servidor localmente:

```bash
npm start
```

Una vez que la aplicación esté corriendo, puedes hacer un request de prueba:

```bash
curl http://localhost:3000
```

## Pipeline de Integración Continua (Jenkins)

El proyecto incluye un archivo [Jenkinsfile](/Users/lucasmleone/Documents/DevOps/nodejs-helloworld-api/Jenkinsfile) que define el siguiente flujo:
  
- **Dependencias:** Instala las dependencias usando `npm install`.
- **Pruebas:** Ejecuta tests unitarios con `npm test`.
- **Despliegue de la Aplicación:** Arranca la aplicación en segundo plano.
- **Health Check:** Verifica que la aplicación responda correctamente mediante un `curl`.

Para ejecutar el pipeline, configura un job en Jenkins que utilice el archivo mencionado y asegúrate de tener el ambiente de Node.js configurado.

## Notas Adicionales

- Asegúrate de que el puerto 3000 no esté en uso antes de iniciar la aplicación.
- Puedes ajustar el pipeline o los scripts según tus necesidades y entorno de despliegue.

¡Disfruta probando y modificando la aplicación!