# Aplicación Rick and Morty con Riverpod

Una aplicación Flutter que muestra personajes de la serie de televisión Rick and Morty utilizando la [API de Rick and Morty](https://rickandmortyapi.com/). Este proyecto demuestra prácticas modernas de desarrollo en Flutter con Riverpod para la gestión del estado.

![Aplicación Rick and Morty](https://rickandmortyapi.com/api/character/avatar/1.jpeg)

## Características

- 📱 Explorar personajes del universo de Rick and Morty
- 🔍 Ver información detallada de los personajes
- 🔄 Funcionalidad de deslizar para actualizar
- 📃 Paginación con desplazamiento infinito
- 🌐 Soporte multilingüe (Inglés y Español)
- 🎨 Tema y estilo personalizados
- 🔄 Gestión de estado con Riverpod

## Arquitectura

Este proyecto sigue un enfoque de arquitectura limpia con las siguientes capas:

### Core
- **API**: Servicio base de API y utilidades de paginación
- **Components**: Componentes de UI reutilizables
- **Environment**: Configuración del entorno
- **Localization**: Soporte de internacionalización
- **Routing**: Configuración de navegación con Go Router
- **Theme**: Tema personalizado de la aplicación

### Features
Cada característica sigue esta estructura:
- **Domain**: Entidades, interfaces de repositorios y fuentes de datos
- **Infrastructure**: Implementaciones de API, DTOs y mapeadores
- **Presentation**: Pantallas, widgets y proveedores

## Tecnologías Utilizadas

- **Flutter**: Framework de UI
- **Riverpod**: Gestión de estado
- **Go Router**: Navegación
- **Dio**: Cliente HTTP
- **JSON Serializable**: Análisis JSON
- **Flutter Dotenv**: Configuración de entorno
- **Intl**: Internacionalización

## Primeros Pasos

### Requisitos Previos

- Flutter SDK (versión ^3.8.1)
- Dart SDK (versión ^3.8.1)

### Instalación

1. Clonar el repositorio:
   ```bash
   git clone https://github.com/tuusuario/rick_and_morty_riverpod.git
   cd rick_and_morty_riverpod
   ```

2. Crear un archivo `.env` en el directorio raíz con:
   ```
   API_BASE_URL=https://rickandmortyapi.com/api
   ```

3. Instalar dependencias:
   ```bash
   flutter pub get
   ```

4. Generar los archivos necesarios:
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   flutter gen-l10n
   ```

5. Ejecutar la aplicación:
   ```bash
   flutter run
   ```

## Estructura del Proyecto

```
lib/
├── core/
│   ├── api/
│   ├── components/
│   ├── env/
│   ├── l10n/
│   ├── routing/
│   └── theme/
├── features/
│   ├── characters/
│   │   ├── domain/
│   │   ├── infrastructure/
│   │   └── presentation/
│   └── translations/
│       └── presentation/
└── main.dart
```

## Gestión de Estado

Este proyecto utiliza Riverpod para la gestión del estado con los siguientes proveedores:

- `charactersProvider`: Gestiona la lista de personajes con paginación
- `characterProvider`: Obtiene detalles individuales de los personajes
- `localeNotifierProvider`: Maneja el cambio de idioma

## Capturas de Pantalla

[Agregar capturas de pantalla aquí]

## Contribuir

¡Las contribuciones son bienvenidas! No dudes en enviar un Pull Request.

## Licencia

Este proyecto está licenciado bajo la Licencia MIT - consulta el archivo LICENSE para más detalles.

## Agradecimientos

- [API de Rick and Morty](https://rickandmortyapi.com/) por proporcionar los datos
- Equipos de [Flutter](https://flutter.dev/) y [Dart](https://dart.dev/)
- [Riverpod](https://riverpod.dev/) por la excelente solución de gestión de estado
