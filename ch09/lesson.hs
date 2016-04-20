-- implement enumFromTo
eftInt :: Int -> Int -> [Int]
eftInt x y
  | x <= y    = x : eftInt (succ x) y
  | otherwise = []

-- intermission
-- 1.
-- some cribbed from actual `words` implementation
-- https://hackage.haskell.org/package/base-4.8.2.0/docs/src/Data.OldList.html#local-1627444824
myWords :: String -> [String]
myWords s =
  case dropWhile (==' ') s of
    "" -> []
    s' -> takeWhile (/=' ') s' : myWords (dropWhile (/=' ') s')

