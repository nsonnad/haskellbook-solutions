module WordNumber where
-- turn integer into hyphen-separated list of English words

import Data.List (intersperse)

-- func turns ints into english words
digitToWord :: Int -> String
digitToWord d
  | d == 0 = "zero"
  | d == 1 = "one"
  | d == 2 = "two"
  | d == 3 = "three"
  | d == 4 = "four"
  | d == 5 = "five"
  | d == 6 = "six"
  | d == 7 = "seven"
  | d == 8 = "eight"
  | d == 9 = "nine"

-- func that turns ints into list of ints
digits :: Int -> [Int]
digits x = go x []
  where go x xs
         | x >= 10   = go (div x 10) $ (mod x 10):xs
         | otherwise = (mod x 10):xs

-- turn digit into list of english strings
digitToWords :: Int -> [String]
digitToWords x = map digitToWord $ digits x

-- turn list of english strings into single kebab-cased
wordNumber :: Int -> String
wordNumber = concat . intersperse "-" . digitToWords
