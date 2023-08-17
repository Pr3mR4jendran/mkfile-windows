# mkfile-windows
A command line tool for Windows that allows users to make a file of arbitrary size, similar to mkfile on OSX.

Usage: mkfile -size <size> -fname <fname>

### SYNOPSIS
Creates a dummy file with the specified size and name in the specified directory.

### DESCRIPTION
This script creates a dummy file with random content of the specified size and name in the specified directory.

### PARAMETER size
The size of the dummy file in bytes.

### PARAMETER path
The path to the directory where the dummy file will be created.

### PARAMETER fname
The name (with extension) of the dummy file.

### EXAMPLE
mkfile -size 1048576 -fname mydummyfile.txt

This example creates a dummy file named mydummyfile.txt with a size of 1048576 bytes in the specified directory.
