# Frogger

A 2D Frogger-style game built with Godot and GDScript for my video game programming coursework at the University of Vermont.

Move the frog across the road, avoid passing cars, and reach the finish area to win. Hitting a car ends the round and returns you to the title screen.

## Features

- Grid-based movement in 32-pixel steps
- Cars spawned at randomly selected locations with randomized vehicle colors
- Traffic moving in opposite directions
- Collision detection and win/lose messages
- Title screen with a button to start another round

## Controls

| Action | Keys |
| --- | --- |
| Move | WASD or arrow keys |

## Run locally

1. Clone or download this repository.
2. Supply your own properly licensed replacement images in `assets/`: `background.png`, `frog.png`, `car_black.png`, `car_red.png`, `car_blue.png`, and `car_yellow.png`. The original course assets are excluded because they cannot be redistributed. The game will not run as-is without replacement assets.
3. Open Godot and import `project.godot`.
4. Allow the editor to import the assets, then press **F6** with `title_screen.tscn` open, or **F5** to run the project.

The project configuration specifies **Godot 4.7** and the **Forward Plus** renderer. Use a compatible Godot version.

## Project structure

- `player.gd` — player movement and collision response
- `car.gd` — traffic movement, appearance, and cleanup
- `game.gd` — spawning cars
- `finish.gd` — win condition
- `globals.gd` — shared title-screen message
- `title_screen.gd` — starting and restarting the game

## About

Created by Tyler Sheehan as a class project. This repository includes the game source only; generated editor caches and exported builds are excluded.
