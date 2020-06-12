# C++ Template Project

This should provide an easy start for any C++ project.

I'm using VSCode with the [`clangd`](https://marketplace.visualstudio.com/items?itemName=llvm-vs-code-extensions.vscode-clangd) extension, as I found it provides the most accurate intellisense.

To make this process (relatively) automatic I also use [`bear`](https://github.com/rizsotto/Bear) with a `makefile` to generate the compile commands. For that purpose you can run `make bear` to generate `compile_commands.json` (See [json compilation database](https://clang.llvm.org/docs/JSONCompilationDatabase.html)).

Note that of this moment the `clangd` extension doesn't automatically detect changes to the `compile_commands.json`, so you have to reload VSCode if there's a change to the flags etc.
