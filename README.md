# Frogger

A 2D Frogger-style game built with Godot and GDScript for my video game programming course at the University of Vermont.

uploaded on github to showcase coding in godot and building games.

## Features

- Grid-based movement in 32-pixel steps
- Cars spawned at randomly selected locations with randomized vehicle colors
- Traffic moving in opposite directions
- Collision detection and win/lose messages
- Title screen with a button to start another round

## Project structure

- `player.gd` — player movement and collision response
- `car.gd` — traffic movement, appearance, and cleanup
- `game.gd` — spawning cars
- `finish.gd` — win condition
- `globals.gd` — shared title-screen message
- `title_screen.gd` — starting and restarting the game
