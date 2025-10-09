# 3D Shooter Game

Este proyecto es un juego de disparos en 3D. Incluye soporte multiidioma (español, inglés), multijugador y diferentes armas con animaciones.

## Estructura

- `/src/` Código principal (jugador, gestor de idiomas, escenas)
- `/locales/` Archivos de traducción por idioma
- `/assets/` Recursos gráficos y de audio

## Primeros pasos

1. Instala [Godot Engine](https://godotengine.org/).
2. Clona el repositorio.
3. Abre la carpeta raíz con Godot y ejecuta la escena principal (`src/main.tscn`).
4. Cambia el idioma modificando `current_language` en `lang.gd`.

## Traducción

Agrega nuevos archivos `.json` en `/locales/` para más idiomas. Añade las claves que quieras traducir.

## Controles básicos

- Movimiento: Flechas del teclado
- Disparar: Tecla asignada a la acción "shoot" en el proyecto Godot
- Cambiar arma: Tecla asignada a la acción "next_weapon"
- Recargar: Tecla asignada a la acción "reload"

## Multijugador

- Ejecuta `start_server()` en `network.gd` para crear una partida.
- Ejecuta `connect_to_server(ip)` para conectarte a una partida existente.

## Animaciones

Cada arma contiene un AnimationPlayer con animaciones para disparar y recargar.
