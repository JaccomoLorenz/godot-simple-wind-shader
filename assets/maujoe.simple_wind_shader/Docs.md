# Documentation:

## Shader Version 1.1

### Shader settings avaiable from Editor/GDscript.
- float speed - The speed of the wind movement.
- float minStrength - The minimal strength of the wind movement.
- float maxStrength - The maximal strength of the wind movement.
- float interval - The time between minimal and maximal strength changes.
- float detail - The detail (number of waves) of the wind movement.
- float distortion - The strength of geometry distortion.
- vec2 direction - The direction of wind movement.
- float heightOffset - The height where the wind begins to move. By default 0.0, so everything over the object origin will have wind. (Make sure that you position the object on the right height or adapt it with this setting!)

## Shader Version 1.0

### Shader settings avaiable from Editor/GDscript.
- float speed - The speed of the wind movement.
- float strength - The strength of the wind movement.
- int detail - The detail (number of waves) of the wind movement.
- vec2 direction - The direction of wind movement.
- float heightOffset - The height where the wind begins to move. By default 0.0, so everything over the object origin will have wind. (Make sure that you position the object on the right height or adapt it with this setting!)
