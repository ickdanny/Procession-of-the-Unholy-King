# Procession of the Unholy King v1.0

Procession of the Unholy King (POTUK) is the fifth entry in the Eucatastrophe series of vertical bullet hell shoot-em-up games. This repository includes all resources needed to compile and build the game locally. The underlying engine is called the Process Engine, and it is written using C++ and uses archetype-based ECS.

Instructions on how to play the game can be found in `packaging/README.txt`.

## Requirements

To run the game, the following minimum requirements are stated:
- Windows 10
- Direct3D 11
- 2GB RAM

To build the game, the following are used:
- Git
- Powershell
- Cmake 3.30.2
- MSVC 19.40.33813
- Windows SDK 10.x

## Installation

Install POTUK as follows using Powershell:

```
git clone https://www.github.com/ickdanny/Procession-of-the-Unholy-King
cd Procession-of-the-Unholy-King
.\build.ps1
```

## Usage

The build script should create the directory `EU05_POTUK` and the archive `EU05_POTUK.zip`. To launch the game, navigate to `EU05_POTUK` and run `EU05_POTUK.exe`.

## Modding

POTUK can be modded without rebuilding because the gameplay is scripted in Darkness, a custom interpreted scripting language. In the `EU05_POTUK` directory, the scripts used by the game at runtime are located in the subdirectory `res\scripts`. The grammar of Darkness can be found in the file `darkness\grammer.txt`, but there is no other documentation for the language.
