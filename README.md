# Notes from _Learn You a Haskell for Great Good!_

## _Starting Out_

http://learnyouahaskell.com/starting-out

### _Ready, set, go!_

* What's `Prelude`?
  * Standard module that is automatically imported
  * Imports and re-exports many functions
* Other GHCi commands not mentioned directly in chapter:
  * `:i` or `:info`: Gives fully qualified name of function
  * `:b` or `:browse`: Dump all symbols exported by given module
  * `:q` or `:quit`: Closes GHCi down

### _Baby's first functions_

* More Haskellish way of defining `doubleSmallNumber`:
```haskell
doubleSmallNumber x | x > 100 = x
doubleSmallNumber x = x * 2
```
* But we'll probably learn about "guards" later
* Note that GHCi supports tab completion much like bash terminal etc.

### _An intro to lists_

* Haskell's representation of strings as lists of characters is both a strength
and a weakness
  * Academics seem to like `[Char]`
  * Lists generally considered to be lists of independent elements
  * Text strings are nearly always treated a single object
  * Interesting language design choice
  * http://www.reddit.com/r/haskell/comments/29jw0s/whats_wrong_with_string/cilp5hy
* `"Steve Buscemi" !! 6`: index operator `!!` is _linear_ in `n` where `n` is the
  index
* `head` is a fascinating function
  * `head []` throws an exception
  * Technically its type is `[a] -> a` but clever people like to throw the
  &#x22A5; (bottom) symbol and terms like _partial function_ around
  * Although Haskell's type system is pretty strong, it is unable to encode the
  fact that `head` does not terminate under certain conditions

