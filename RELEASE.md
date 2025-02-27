# Guía de Release

Este documento describe el proceso para crear una nueva release de JSONPlaceholder API Tests.

## Versionado

Seguimos [Semantic Versioning](https://semver.org/):

- MAJOR.MINOR.PATCH
    - MAJOR: cambios incompatibles
    - MINOR: nuevas funcionalidades compatibles
    - PATCH: correcciones de errores compatibles

## Proceso de Release

1. **Actualizar la versión**:
   Actualiza la versión en `build.gradle`:
   ```groovy
   version = 'X.Y.Z'
   ```

2. **Actualizar CHANGELOG.md**:
   Añade los cambios de la nueva versión al archivo CHANGELOG.md.

3. **Commit de los cambios**:
   ```bash
   git add build.gradle CHANGELOG.md
   git commit -m "Preparar release X.Y.Z"
   ```

4. **Crear una etiqueta**:
   ```bash
   git tag -a vX.Y.Z -m "Versión X.Y.Z"
   ```

5. **Push a GitHub**:
   ```bash
   git push origin main
   git push origin vX.Y.Z
   ```

6. **Crear una Release en GitHub**:
    - Ve a la sección "Releases" en GitHub
    - Haz clic en "Draft a new release"
    - Selecciona la etiqueta que acabas de crear
    - Añade un título para la release
    - Copia el contenido relevante del CHANGELOG.md
    - Publica la release

7. **Verificar CI/CD**:
   Asegúrate de que el workflow de GitHub Actions se ejecute correctamente para la nueva etiqueta.

## Plantilla para notas de release

```markdown
# Release v[VERSIÓN] ([FECHA])

## 🚀 Nuevas funcionalidades

- [Descripción de la nueva funcionalidad] ([#número-de-issue])

## 🐛 Correcciones

- [Descripción de la corrección] ([#número-de-issue])

## 📝 Documentación

- [Cambios en la documentación]

## 🔧 Mantenimiento

- [Cambios internos/de infraestructura]
```