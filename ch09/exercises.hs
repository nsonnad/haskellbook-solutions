-- implementing standard funcs

--1.
myOr :: [Bool] -> Bool
myOr []     = False
myOr (x:xs) = if x == True then True else myOr xs

--2.
myAny :: (a -> Bool) -> [a] -> Bool
myAny f [] = False
myAny f (x:xs)
  | f x == True = True
  | otherwise   = myAny f xs

--3.
myElem :: Eq a => a -> [a] -> Bool
myElem a [] = False
myElem a (x:xs)
  | a == x    = True
  | otherwise = myElem a xs

--3 (using any)
myElem' :: Eq a => a -> [a] -> Bool
myElem' a xs = myAny (\x -> x == a) xs

--4 (my naive way)
myReverse :: [a] -> [a]
myReverse []     = []
myReverse (x:xs) = (myReverse xs) ++ [x]

--4 (from haskell source. likely much faster?)
myReverse' :: [a] -> [a]
myReverse' l = rev l []
  where
    rev [] a     = a
    rev (x:xs) a = rev xs (x:a)

--5 (works but is it bad i'm using ++?)
squish :: [[a]] -> [a]
squish []       = []
squish (xs:xss) = xs ++ squish xss

-- not working...
squishMap :: (a -> [b]) -> [a] -> [b]
squishMap f [] = []
squistMap f (xs:xss) = (f xs) ++ (squishMap xss)
