# Simple Wind Shader

A simlpe shader for the godot engine (version 2.1) that gives objects a wiggle/wind effect.


## Demo

There is a demo scene "demo.tscn" where you can test the shader and play with the shader parameters.

Video: https://www.youtube.com/watch?v=3MrdB-qcXAg

### Controls

Mouse + WASD or up/down/left/right key to move the camera.
F1 to show/hide the frames/second.


## How to use the shader

1. Copy the shader folder or at least it's content somewhere into your project folder (See license details).
2. Then open/select a mesh in godot and give the object a new ShaderMaterial if it haven't one.
(Make sure that the mesh origion is on the right position see below: Shader parameters -> Height Offset ).
3. Now go into the material settings and load one of the shaders that you have copied to your project folder. 
4. Now you can add a texture to it and play with the shader parameters to get a nice result.

### The shader files

There are two shader files but they produce the same result:

"wind_shader.tres" is a shader that is written in godots shading language.
"wind_shader_graph" is a shader for the visual shader editor.

### Shader paramenters

- Speed: The speed of the wind movement.
- Strength: The strength of the wind movement.
- Detail: The detail (number of waves) of the wind movement.
- Direction: The direction of wind movement.
- Height Offset: The height where the wind begins to move. By default 0.0, so everything over the object origin will have wind. (So make sure that you position the object on the right height or adapt it with this setting!) 

## License

All parts of this project that are not copyrighted or licensed by someone else are released under the MIT License - see the LICENSE.md file for details.



