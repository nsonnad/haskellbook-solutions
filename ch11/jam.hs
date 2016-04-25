module Jammin where

import Data.List

data Fruit =
    Apple
  | BlackBerry
  | Peach
  | Plum
  deriving (Eq, Show, Ord)

data JamJar =
  JamJar { fruit :: Fruit
         , jars :: Int
         }
  deriving (Eq, Show, Ord)

row1 = JamJar Peach 5
row2 = JamJar Apple 10
row3 = JamJar Plum 15
row4 = JamJar BlackBerry 20
row5 = JamJar Peach 25
row6 = JamJar Apple 20
allJam = [row1, row2, row3, row4, row5, row6]

-- 6.
getNumJars :: JamJar -> Int
getNumJars (JamJar _ jars) = jars

totalJars :: [JamJar] -> Int
totalJars js = foldr (+) 0 $ map getNumJars js

-- 7.
mostRow :: [JamJar] -> JamJar
mostRow (j:js) =
  foldr cmpJars j js
  where cmpJars a b
         | getNumJars a > getNumJars b = a
         | otherwise = b

-- 8, 9, 10
compareKind :: JamJar -> JamJar -> Ordering
compareKind (JamJar k _) (JamJar k' _) = compare k k'

-- possible to do that lambda in pointfree?
groupJam :: [JamJar] -> [[JamJar]]
groupJam = groupBy (\ j j' -> compareKind j j' == EQ) . sortBy compareKind
