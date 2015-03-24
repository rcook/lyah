-- Problem 1
lastElement :: [a] -> a
lastElement [] = error "Cannot apply to empty list"
lastElement (x : []) = x
lastElement (_ : xs) = lastElement xs

-- Problem 2
lastButOneElement :: [a] -> a
lastButOneElement [] = error "Cannot apply to empty list"
lastButOneElement (x : []) = error "Cannot apply to singleton list"
lastButOneElement (x : _ : []) = x
lastButOneElement (_ : xs) = lastButOneElement xs

-- Problem 3
elementAt :: [a] -> Int -> a
elementAt (x : _) 0 = x
elementAt (x : xs) i = elementAt xs (i - 1)
elementAt _ _ = error "No element at given index"

-- Problem 4
myLength :: [a] -> Int
myLength [] = 0
myLength (x : xs) = 1 + myLength xs

-- Problem 5
myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x : xs) = (myReverse xs) ++ [x]

-- Problem 6
isPalindrome :: Eq a => [a] -> Bool
isPalindrome x = x == myReverse x

-- Problem 7
data NestedList a = Elem a | List [NestedList a]
flatten :: NestedList a -> [a]
flatten (Elem x) = [x]
flatten (List ns) = flattenHelper ns
  where
    flattenHelper [] = []
    flattenHelper (x : xs) = flatten x ++ flattenHelper xs

-- Problem 8
compress :: Eq a => [a] -> [a]
compress [] = []
compress (x : xs) = x : compressHelper x xs
  where
    compressHelper x [] = []
    compressHelper x [y] = if x == y then [] else [y]
    compressHelper x (y : ys) = if x == y then compressHelper x ys else y : compressHelper y ys

-- Problem 9
pack :: Eq a => [a] -> [[a]]
pack [] = []
pack (x : xs) = packHelper x [x] xs
  where
    packHelper x xs [] = [xs]
    packHelper x xs [y] = if x == y then [y : xs] else [xs, [y]]
    packHelper x xs (y : ys) = if x == y then packHelper x (y : xs) ys else xs : packHelper y [y] ys

-- Problem 10
encode :: Eq a => [a] -> [(Int, a)]
encode xs = map (\zs@(y : ys) -> (length zs, y)) $ pack xs

