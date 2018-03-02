# Simple Wind Shader

A simlpe shader for the godot engine 3 that gives objects like grass or plants a wiggle/wind effect.

Videos:

Godot 3: TODO

Godot 2: https://www.youtube.com/watch?v=3MrdB-qcXAg


## How to use

There is a demo scene in the demo folder where you can test all features and play with the settings.

If you don't need the demo just ignore the demo folder and connect your mesh with the wind_shader.tres that can be found in the shaders folder.

## Documentation:

### Shader settings avaiable from Editor/GDscript.

- float speed - The speed of the wind movement.
- float strength - The strength of the wind movement.
- int detail - The detail (number of waves) of the wind movement.
- vec2 direction - The direction of wind movement.
- float heightOffset - The height where the wind begins to move. By default 0.0, so everything over the object origin will have wind. (Make sure that you position the object on the right height or adapt it with this setting!)

![Image](editor_settings.png)

## License

All parts of this project that are not copyrighted or licensed by someone else are released free under the MIT License - see the LICENSE.md file for details.
Please keep license file, thanks. :)
