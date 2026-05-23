# Laboratorio Flutter - App estilo HBO Max

## Descripción del proyecto

Este proyecto consiste en una aplicación desarrollada en **Flutter** inspirada visualmente en una plataforma de streaming como **HBO Max**. La aplicación muestra un catálogo simple de películas y series utilizando imágenes locales, tarjetas visuales, categorías seleccionables y navegación entre pantallas.

El proyecto fue desarrollado como parte de un laboratorio académico con el objetivo de practicar componentes básicos e importantes de Flutter, como `ListView`, `ListTile`, `Cards`, listas, mapas, rutas, tema global y manejo de estado con `setState`.

La aplicación no utiliza base de datos ni conexión a internet. Todo el contenido se encuentra almacenado localmente dentro del proyecto.

---

## Objetivo del laboratorio

El objetivo principal del laboratorio es comprender cómo construir una aplicación Flutter organizada, visualmente atractiva y funcional, aplicando los siguientes conceptos:

- Uso de `ListView`
- Uso de `ListTile`
- Uso de listas y mapas
- Uso de rutas con `Navigator`
- Aplicación de un tema global
- Uso de `Card`
- Uso de imágenes locales
- Uso de `GridView`
- Manejo de estado con `StatefulWidget`
- Filtrado de contenido por categorías

---

## Funcionalidades principales

La aplicación permite:

1. Mostrar una pantalla principal con estilo oscuro similar a HBO Max.
2. Visualizar películas y series en pequeños cuadros usando `GridView`.
3. Mostrar imágenes locales desde la carpeta `assets/images`.
4. Filtrar contenido por categorías: Acción, Comedia y Drama.
5. Cambiar dinámicamente la categoría seleccionada usando `setState`.
6. Mostrar cada película o serie dentro de una tarjeta personalizada.
7. Navegar desde la pantalla principal hacia una pantalla de menú.
8. Mostrar opciones de menú usando `ListView` y `ListTile`.
9. Aplicar un tema oscuro global desde `main.dart`.
10. Organizar el código separando datos, pantallas y widgets.

---

## Tecnologías utilizadas

- Flutter
- Dart
- Visual Studio Code
- Material Design
- Imágenes locales
- Navigator
- GridView
- ListView
- ListTile
- Card
- StatefulWidget
- setState

---

## Estructura del proyecto

La estructura principal del proyecto es la siguiente:

```text
lib/
│
├── main.dart
│
├── data/
│   └── peliculas_data.dart
│
├── screens/
│   ├── home_screen.dart
│   └── menu_screen.dart
│
└── widgets/
    └── pelicula_card.dart

assets/
└── images/
    ├── BigBangTheory.jpg
    ├── RickAndMorty.jpg
    ├── DrHouse.jpg
    ├── Euphoria.jpg
    ├── Gumball.jpg
    └── GamesOfThrones.jpg