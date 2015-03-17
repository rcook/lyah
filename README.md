# Notes from _Learn You a Haskell for Great Good!_

## Starting out

http://learnyouahaskell.com/starting-out

* What's `Prelude`?
  * Standard module that is automatically imported
  * Imports and re-exports many functions
* Other GHCi commands not mentioned directly in chapter:
  * `:i` or `:info`: Gives fully qualified name of function
  * `:b` or `:browse`: Dump all symbols exported by given module
* More Haskellish way of defining `doubleSmallNumber`:
```haskell
doubleSmallNumber x | x > 100 = x
doubleSmallNumber x = x * 2
```
* But we'll probably learn about "guards" later
* Note that GHCi supports tab completion much like bash terminal etc.

