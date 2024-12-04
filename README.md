# Haskell Lazy Evaluation Bug: Infinite List Intersection

This repository demonstrates a subtle bug in Haskell code stemming from the interaction of lazy evaluation and infinite lists. The program `bug.hs` uses the `intersect` function from `Data.List` to find a common element between two lists. When one or both of the lists are infinite, the program hangs instead of terminating gracefully.

The solution, presented in `bugSolution.hs`, addresses this issue by implementing a more robust function that handles infinite list scenarios effectively.