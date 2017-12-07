# Simple Wind Shader (TEST VERSION FOR GODOT 3.0!)

A simlpe shader for the godot engine version 3 (Beta/Daily Build) that gives objects like grass or plants a wiggle/wind effect.

Video: TODO

## Demo

There is a demo scene "demo.tscn" where you can test the shader and play with the shader parameters.
If you don't need the demo install only the shader folder or its content (follow the instructions below).

### Controls

Press F1 to show/hide performence info.


## How to use the shader

1. Copy the shader folder or at least its content somewhere into your project folder (See license details).
2. Then open/select a mesh in godot and give the object a new ShaderMaterial if it haven't one.
(Make sure that the mesh origion is on the right position see below: Shader parameters -> Height Offset ).
3. Now go into the material settings and load the shader that you have copied to your project folder.
4. Now you can add a texture to it and play with the shader parameters to get a nice result.


### Shader paramenters

- Speed: The speed of the wind movement.
- Strength: The strength of the wind movement.
- Detail: The detail (number of waves) of the wind movement.
- Direction: The direction of wind movement.
- Height Offset: The height where the wind begins to move. By default 0.0, so everything over the object origin will have wind. (So make sure that you position the object on the right height or adapt it with this setting!)

## License

All parts of this project that are not copyrighted or licensed by someone else are released under the MIT License - see the LICENSE.md file for details.
