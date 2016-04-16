tensDigit :: Integral a => a -> a
tensDigit x = d
  where xLast = x `div` 10
        d     = xLast `mod` 10

tensDigit' :: Integral a => a -> a
tensDigit' x = fst $ x `divMod` 10

foldBool :: a -> a -> Bool -> a
foldBool x y b
  | b == True  = x
  | b == False = y

g :: (a -> b) -> (a, c) -> (b, c)
g f (a, c) = (f(a), c)
