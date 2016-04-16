myAbs :: Integer -> Integer
myAbs x
  | x < 0     = (-x)
  | otherwise = x

-- with where clause
avgGrade :: (Fractional a, Ord a) => a -> Char
avgGrade x
  | y >= 0.9  = 'A'
  | y >= 0.8  = 'B'
  | y >= 0.7  = 'C'
  | y >= 0.59 = 'D'
  | otherwise  = 'F'
  where y = x / 100

pal xs
  | xs == reverse xs = True
  | otherwise        = False
