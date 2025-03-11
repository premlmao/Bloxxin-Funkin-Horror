package shaders;

import flixel.system.FlxAssets.FlxShader;

class MyShader extends FlxShader
{
    @:glFragmentSource('
        // shader code here
    ')

    public function new() {
        super();
    }
}