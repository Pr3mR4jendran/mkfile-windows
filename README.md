# mkfile-windows
A command line tool for Windows that allows users to make a file of arbitrary size, similar to mkfile on OSX.

### Setup
In order to setup this tool, first clone the repository locally. Once you clone the repository locally, add the project directory to your `Path` environment variable. Follow [this tutorial](https://stackoverflow.com/questions/44272416/how-to-add-a-folder-to-path-environment-variable-in-windows-10-with-screensho) if you're not sure how to do this. You may then test the command by entering `mkfile` into Command Prompt, Powershell or Windows Terminal.

**Usage**: `mkfile -size <size> -fname <fname>`

### SYNOPSIS
Creates a dummy file with the specified size and name in the current directory.

### DESCRIPTION
This script creates a dummy file with random content of the specified size and name in the current directory.

### PARAMETER size
The size of the dummy file in bytes.

### PARAMETER fname
The name (with extension) of the dummy file.

### EXAMPLE
`mkfile -size 1048576 -fname mydummyfile.txt`

This example creates a dummy file named mydummyfile.txt with a size of 1 MB in the current directory.
