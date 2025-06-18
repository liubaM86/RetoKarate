# 🧪 Reto de Automatización API con Karate DSL

Este proyecto contiene la solución al reto técnico de pruebas automatizadas de API utilizando **[Karate DSL](https://karatelabs.io/)**. Las pruebas fueron escritas en Gherkin y ejecutadas con Maven. El objetivo principal es validar los flujos de autenticación (`signup` y `login`) 
del sitio web [https://www.demoblaze.com](https://www.demoblaze.com) a través de su API.

---

## 📁 Estructura del Proyecto

karate-api-test/
├── src/
│   └── test/
│       └── java/
│           └── examples/
│               └── users/
│                   ├── signup.feature
│                   ├── login.feature
│                   └── login-data.json
├── pom.xml
└── README.md

---

## ✅ Funcionalidades probadas

### 🔹 signup.feature
- Registro de usuario exitoso con nombre aleatorio
- Registro fallido con usuario existente

### 🔹 login.feature
- Login exitoso con credenciales válidas
- Login fallido por contraseña incorrecta
- Login fallido con usuario inexistente
- Login usando Scenario Outline

---

## 🚀 Cómo ejecutar las pruebas

### 🧩 Requisitos previos

- Java 11
- Maven 3.6+
- Git

### ▶️ Ejecutar desde terminal

mvn clean test

---

## 📦 Dependencias

El proyecto usa la versión Karate 1.4.1 por compatibilidad con Java 17.  
Configurado en el archivo pom.xml.

---

## 📑 Recursos

- Documentación oficial de Karate: https://karatelabs.io/
- Sitio de pruebas: https://www.demoblaze.com

---

## 👩🏻‍💻 Autor

Liuba María Infante  
GitHub: https://github.com/liubaM86

---

## 🛡️ Licencia

Este proyecto fue realizado con fines educativos y técnicos. Puedes adaptarlo y usarlo libremente.
