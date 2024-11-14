# Karate API Testing Project

Este proyecto usa **Karate**, un potente framework de pruebas de API que facilita la automatización de pruebas tanto para APIs REST como SOAP y GraphQL. A través de su sintaxis Gherkin (BDD), puedes escribir pruebas de manera sencilla y comprensible, incluso si no eres un desarrollador experimentado.

## 🚀 Descripción

Este proyecto está diseñado para automatizar las pruebas de API en servicios web utilizando **Karate**. Puedes probar APIs de manera eficiente, realizar pruebas de autenticación, manejar parámetros dinámicos, y generar reportes detallados. Además, la integración con herramientas CI/CD como Jenkins, GitHub Actions y GitLab CI es fácil.

---

## 📋 Tabla de Contenidos

- [🚀 Descripción](#-descripción)
- [🔧 Requisitos](#-requisitos)
- [📥 Instalación](#-instalación)
- [📝 Estructura de Archivos](#-estructura-de-archivos)
- [🛠️ Ejecución de Pruebas](#️-ejecución-de-pruebas)
- [📊 Reportes](#-reportes)
- [📍 Contribución](#-contribución)
- [📜 Licencia](#-licencia)

---

## 🔧 Requisitos

Antes de comenzar, asegúrate de tener los siguientes programas instalados:

- **Java 17 o superior**.
- **Maven** para manejar dependencias y ejecutar pruebas.
- Un editor de código como **VSCode**, **IntelliJ IDEA**, o cualquier IDE de tu preferencia.

---

## 📥 Instalación

1. **Clonar el repositorio**:

   ```bash
   git clone https://github.com/anxoportela/karate-api-testing.git
   cd karate-api-testing
   ```

2. **Instalar las dependencias**:

   Asegúrate de que tienes **Maven** instalado. Si no lo tienes, puedes seguir [esta guía](https://maven.apache.org/install.html).

   Instala las dependencias del proyecto:

   ```bash
   mvn clean install
   ```

3. **Configurar las pruebas de Karate**:

   El proyecto contiene dos archivos de características de Karate: 

   - `src/test/resources/api-test.feature`: Pruebas básicas de una API.
   - `src/test/resources/api-auth-test.feature`: Pruebas de una API con autenticación.

---

## 📝 Estructura de Archivos

La estructura básica del proyecto es la siguiente:

```
karate-api-testing/
│
├── src/
│   ├── main/
│   └── test/
│       ├── java/
│       │   └── com/
│       │       └── example/
│       │           └── KarateTest.java
│       └── resources/
│           ├── api-test.feature
│           └── api-auth-test.feature
├── pom.xml
└── README.md
```

- **src/test/resources/api-test.feature**: El archivo que contiene las pruebas de una API básica.
- **src/test/resources/api-auth-test.feature**: El archivo que contiene las pruebas de una API con autenticación.
- **src/test/java/com/example/KarateTest.java**: La clase Java que ejecuta las pruebas.
- **pom.xml**: El archivo de configuración de Maven que contiene las dependencias necesarias para Karate.

---

## 🛠️ Ejecución de Pruebas

1. **Ejecutar todas las pruebas de Karate**:

   Desde la terminal, navega al directorio del proyecto y ejecuta:

   ```bash
   mvn test
   ```

   Este comando ejecutará ambos archivos `.feature` (`api-test.feature` y `api-auth-test.feature`).

2. **Ejecutar un archivo específico**:

   Si solo deseas ejecutar un archivo `.feature` específico, usa el siguiente comando:

   Para ejecutar `api-test.feature`:

   ```bash
   mvn test -Dkarate.options="src/test/resources/api-test.feature"
   ```

   Para ejecutar `api-auth-test.feature`:

   ```bash
   mvn test -Dkarate.options="src/test/resources/api-auth-test.feature"
   ```

---

## 📊 Reportes

Después de ejecutar las pruebas, Karate genera un reporte HTML detallado de cada ejecución. El reporte se encuentra en la carpeta `report`.

Puedes abrirlo con tu navegador para ver el resumen de todas las pruebas ejecutadas.

---

## 📍 Contribución

¡Las contribuciones son bienvenidas! Si deseas contribuir a este proyecto, por favor sigue estos pasos:

1. Haz un fork del proyecto.
2. Crea una nueva rama para tu feature o bugfix (`git checkout -b feature/nueva-feature`).
3. Realiza tus cambios y haz commit (`git commit -am 'Agrega nueva funcionalidad'`).
4. Sube tus cambios a tu fork (`git push origin feature/nueva-feature`).
5. Crea un pull request.

---

## 📜 Licencia

Este proyecto está bajo la Licencia MIT. Consulta el archivo [LICENSE](LICENSE) para más detalles.

---

