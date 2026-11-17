# 🚀 Automatización API REQRES- KARATE FRAMEWORD

## 📋 Descripción

Este proyecto automatiza la **API** de prueba **REQRES.IN** diseñado para dar cobertura de calidad a sus flujos críticos de manera eficiente y escalable. Utiliza **KARATE FRAMEWORD** con **Cucumber** para crear pruebas mantenibles y legibles.

## 🎯 Objetivo

Dar cobertura de calidad a los flujos críticos de APP REQRES.IN para el proceso de compra de productos con el rol de usuario.

## 🛠️ Stack Tecnológico

- **Java Corretto-21.0.9.10.1** - Lenguaje de programación
- **karate-junit5:1.5.2** - Framework de automatización y reporting
- **junit-bom:5.10.0** - Herramienta de validaciones
- **Gradle** - Gestión de dependencias y construcción

## 📁 Estructura del Proyecto

```
ProyectoBaseSPCandidato/
├── src/
│   ├── main/
│   │   └── java/
│   │       └── com.co.choucair/
│   └── test/
│       ├── java/
│       │   ├── runners/             # Test Runners de Cucumber
│       │   └── stepdefinitions/     # Definición de pasos Gherkin
│       └── resources/
│           ├── features/            # Archivos .feature en Gherkin
│           └── karate-config.js        # Configuración de Karate
├── build.gradle                     # Configuración de Gradle
└── README.md                        # Este archivo
```

## 🚦 Inicio Rápido

### Prerrequisitos

```bash
# Verificar Java
java -version  # Debe ser 11 o superior

# Verificar Gradle
gradle -v      # O usar ./gradlew incluido
```

### Instalación

```bash
# Clonar el repositorio
git clone https://github.com/ltanose/Karate_reqres_api.git

# Instalar dependencias
gradle clean build

```
### Ejecución de Pruebas

```bash
# Ejecutar una clase runner especifica
./gradlew test --tests "config.Runner"

# Ejecutar todas las pruebas y actualizar reportes
./gradlew clean test 

# Ejecutar pruebas con tags específicos

./gradlew clean test "-Dkarate.options= --tags @users_delete"

./gradlew clean test "-Dkarate.options= --tags @List_users_get"

./gradlew clean test "-Dkarate.options= --tags @Create_users_post"

./gradlew clean test "-Dkarate.options= --tags @Register_user_post"

./gradlew clean test "-Dkarate.options= --tags @Update_users_put"


```

## 📊 Criterios Mínimos de Automatización


| # | Criterio | Tag Sugerido | Prioridad |
|---|----------|--------------|-----------|
| 1 | Validar que se pueda consultar un usuario get | `@List_users_get` | ALTO |
| 2 | Validar status exitoso al consultar un usuario por método get | `@List_users_get` | ALTO |
| 3 | Validar response al consultar un usuario por método get | `@List_users_get` | ALTO |
| 4 | Validar status fallido al consultar un usuario por método get | `@List_users_get` | ALTO |
| 5 | Validar status fallido por acceso al consultar un usuario por método get | `@List_users_get` | ALTO |
| 6 | Validar que se pueda eliminar un usuario status http 204 | `@users_delete` | ALTA |
| 7 | Validar que se pueda crear un usuario status http 201 | `@Create_users_post` | ALTA |
| 8 | Validar response al crear un usuario| `@Create_users_post` | ALTA |
| 9 | Validar response al registrar un usuario| `@Register_user_post` | ALTA |
| 10 | Validar que se pueda registrar un usuario status http 200 | `@Register_user_post` | ALTA |
| 11 | Validar response al Actualizar un usuario status http 200 | `@Update_users_put` | ALTA |
| 12 | Validar que se pueda Actualizar un usuario status http 200 | `@Update_users_put` | ALTA |

## 📈 Reportes

### Karate Reports
- **build/karate-report/karate-summary.html** - Reporte principal