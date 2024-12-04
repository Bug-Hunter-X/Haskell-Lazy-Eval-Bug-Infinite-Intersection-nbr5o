The solution involves adding a limit to the number of elements considered from each list during intersection:

```haskell
import Data.List (intersect)
import Data.Maybe (listToMaybe)

findCommon :: Int -> [Int] -> [Int] -> Maybe Int
findCommon limit xs ys = listToMaybe (take limit xs `intersect` take limit ys)

main :: IO ()
main = do
  let common1 = findCommon 1000 [1..] [1000..]
  let common2 = findCommon 1000 [1..] [2000..]
  print common1 -- Just 1000
  print common2 -- Nothing
```

This modified `findCommon` function takes an additional `limit` parameter.  It now uses `take limit` to restrict the length of the input lists before performing the intersection. This ensures that the intersection computation completes even with infinite input lists, preventing infinite loops.  The program now produces the expected results.