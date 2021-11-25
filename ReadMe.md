# Love Boiler

Love Boiler is a basic LOVE2D boiler plate framework to quick start your game. It includes basic file structure as well as a scene manager to help you organize your levels/scenes and change between them. 

## Quick Start

Replace the content of scenes/demo.lua with your game loop content and update the config.lua file to your projects settings. 

## Files Structure Overview. 

### main.lua

Used to load config variables, build the global 'Game' object, load scenes and pass LOVE2D game loop and input functions to the appropriate scene. 

### config.lua

Contains global constant that are needed during initialization. 

### scenes/

Contains games levels and scenes. New scenes can be added by simply creating a new file where they will be autoloaded. Scenes can be accessed by their file name. For example 'demo.lua' is scene 'demo'

### lib/

Contains game libraries. By default their is a utilities.lua file here intended to store small helper functions that don't require their own library. It's functions are loaded into the global Game options as Game.utils .

### entities/ 

Used to store reusable entity objects. If it draws on the screen it should probably be an entity. 

### assets/

Used to store graphics, sounds, fonts, ect.


