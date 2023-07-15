# C++ VSCode
Boilerplate for building a C++ project using MSVC compiler in VSCode.

- Auto Completion
- Debugging 
- MSVC Command Line Environment
- Compiling of .lib/.dll/.exe files
- Project based structure

## prerequisites

1. Install the [C/C++ extension for VS Code](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools).
2. Install the [MSVC build tools](https://visualstudio.microsoft.com/downloads/), you can either install them standalone via the website or via Visual Studio Installer.
3. Clone this repository
4. Ensure the `compilerPath` in `c_cpp_properties.json` is valid.
5. Ensure the `VsDevCmd.bat` path in `tasks.json` is valid.

## build and run
1. `Ctrl+Shift+B` to build both projects.
2. `F5` to debug or open `project-app/src/main.cpp` and click run/debug.

## project

This is a library type structure which is compiled into `.obj` files and then linked into a `.lib` and `.dll` file into an intermediate directory. This can then be used inside `project-app` as a library.

## project-app

This is an application type structure which compiles into a `.exe` file and uses the `project` .lib as a library.
