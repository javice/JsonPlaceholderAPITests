# Guía de Contribución

¡Gracias por tu interés en contribuir a JSONPlaceholder API Tests! Esta guía te ayudará a configurar el entorno de desarrollo y entender nuestro proceso de contribución.

## Configuración del entorno de desarrollo

1. **Requisitos previos**:
    - Java 11 o superior
    - Git

2. **Configuración del proyecto**:
   ```bash
   # Clonar el repositorio
   git clone https://github.com/tu-usuario/JsonPlaceholderAPITests.git
   cd JsonPlaceholderAPITests
   
   # Compilar el proyecto
   ./gradlew build
   ```

## Proceso de contribución

1. **Crear una issue**: Antes de comenzar a trabajar en una nueva funcionalidad o corrección, crea una issue para discutirla.

2. **Fork y clone**: Haz fork del repositorio y clónalo en tu máquina local.

3. **Crea una rama**: Crea una rama para tu funcionalidad basada en la rama `main`.
   ```bash
   git checkout -b feature/nombre-de-la-funcionalidad
   ```

4. **Desarrolla tu funcionalidad**: Realiza los cambios necesarios y asegúrate de seguir las convenciones de código.

5. **Ejecuta las pruebas**: Asegúrate de que todas las pruebas pasen.
   ```bash
   ./gradlew test
   ```

6. **Commit y push**: Haz commit de tus cambios y súbelos a tu fork.
   ```bash
   git add .
   git commit -m "Descripción de los cambios"
   git push origin feature/nombre-de-la-funcionalidad
   ```

7. **Crea un Pull Request**: Crea un PR desde tu rama hacia la rama `main` del repositorio original. Incluye una descripción clara de los cambios y referencia la issue relacionada.

## Convenciones de código

- Utiliza 4 espacios para la indentación
- Sigue las convenciones de nomenclatura de Java
- Escribe comentarios para el código complejo
- Asegúrate de cubrir tu código con pruebas

## Pruebas

- Todas las nuevas funcionalidades deben incluir pruebas
- Todas las pruebas existentes deben pasar antes de enviar un PR

## Comunicación

- Para preguntas o discusiones, utiliza las issues de GitHub
- Para cambios importantes, discute primero en una issue antes de empezar a trabajar

¡Gracias por contribuir a mejorar JSONPlaceholder API Tests!