-- 2.
sumTo :: (Eq a, Num a) => a -> a
sumTo 0 = 0
sumTo n = n + sumTo (n - 1)

-- 3.
multSum :: (Integral a) => a -> a -> a
multSum x 0 = 0
multSum x n = x + multSum x (n - 1)
