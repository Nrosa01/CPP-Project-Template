# C++ Project Template

# Prerequisites

 - make
 - g++
 - git
 - (optional) gdb

# Set Up

1. Run this in the folder you want to create the template.

```sh
curl "https://raw.githubusercontent.com/Nrosa01/CPP-Project-Template/main/setup.bash | bash
```

2. [Optional] Change APPNAME in executeOnlyBash, buildAndExecuteBash, in the Makefile and in .vscode/launch.json

# Usage

Write all of your source files inside `src`, then execute `make` or `buildAndExecute.bash`to build. For launching the app you can press F5 in vscode for start debugging, or you can use `executeOnlyBash.bash`. You can also directly call ./bin/APPNAME-Debug from the root directory of your project. The two bats provided forward arguments to the app.

You can have directories inside src, don't worry about the source files, the makefile will handle that for you.

You can also build and execute in release mode with -r flag when using make or when using the bash scripts. Example:

```sh

bash executeOnlyBash.bash -r arg1 arg2... (runs release)
bash executeOnlyBash.bash -d arg1 arg2... (runs debug)
bash executeOnlyBash.bash arg1 arg2...    (runs debug)

```

# Known problems

Currently changes in header files aren't detected in the makefile. So if you have a file.h that's already compiled in file.o and you change file.h, when you run make it won't rebuild file.o.

This problem doesn't affect .cpp files. If you have a class in file.h file.cpp and you have already compiled a previous version in file.o, if you change file.cpp it will rebuild file.o.

# FAQ

- Can I change the compiler?
    
    Yes, you can, just edit CC field of the makefile. But I don't know how other compilers take arguments so you may need to make more changes.

- Can I run this in Windows?

    Yes, you just need to install make from chocolatey or any other source and g++, don't forget to add both to your PATH ENVIRONMENT variables.

- Why don't you use CMake? It's crossplatform!

    You are free to fork and make a pull request, I'm used to make and Makefile and I don't intend now to learn CMake, but I'm looking into it.
