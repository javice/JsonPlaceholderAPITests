# JSONPlaceholder API Tests

Este proyecto contiene tests automatizados para la API REST de [JSONPlaceholder](https://jsonplaceholder.typicode.com/) utilizando el framework [Karate](https://github.com/karatelabs/karate).

## Descripción

JSONPlaceholder API Tests es un proyecto de ejemplo que demuestra cómo implementar pruebas automatizadas para API REST utilizando Karate DSL. El proyecto incluye tests para las operaciones CRUD (Create, Read, Update, Delete) en la API de JSONPlaceholder.

## Tecnologías utilizadas

- Java 11+
- Gradle 8.10
- Karate 1.4.1
- JUnit 5.11.4

## Estructura del proyecto

```
├── src
│   └── test
│       ├── java
│       │   ├── api
│       │   │   └── JsonPlaceholderAPI.java
│       │   └── runners
│       │       └── TestRunner.java
│       └── resources
│           └── features
│               └── placeholder.feature
├── build.gradle
├── gradlew
├── gradlew.bat
├── settings.gradle
└── README.md
```

## Funcionalidades probadas

- Obtener todos los posts
- Obtener un post por ID de usuario
- Crear un nuevo post
- Actualizar un post existente (PUT)
- Actualizar parcialmente un post existente (PATCH)
- Eliminar un post existente

## Requisitos previos

- Java 11 o superior
- Gradle 8.10 o superior (o puedes usar el wrapper incluido)

## Instalación

1. Clona este repositorio
```bash
git clone https://github.com/tu-usuario/JsonPlaceholderAPITests.git
cd JsonPlaceholderAPITests
```

2. Compila el proyecto
```bash
./gradlew build
```

## Ejecución de las pruebas

Para ejecutar todas las pruebas:

```bash
./gradlew test
```

## Informes

Después de ejecutar las pruebas, puedes encontrar los informes en:

```
build/karate-reports/
```

Abre el archivo `karate-summary.html` en tu navegador para ver un informe detallado.

## CI/CD

Este proyecto utiliza GitHub Actions para la integración continua. Consulta el archivo `.github/workflows/ci.yml` para ver la configuración.

## Contribuir

Si deseas contribuir a este proyecto, por favor:

1. Haz fork del repositorio
2. Crea una rama para tu funcionalidad (`git checkout -b feature/nueva-funcionalidad`)
3. Haz commit de tus cambios (`git commit -m 'Añadir nueva funcionalidad'`)
4. Haz push a la rama (`git push origin feature/nueva-funcionalidad`)
5. Abre un Pull Request

## Licencia

Este proyecto está licenciado bajo la Licencia MIT - ver el archivo [LICENSE.md](LICENSE.md) para más detalles.