fib :: Integral a => a -> a
fib 0 = 0
fib 1 = 1
fib x = fib (x - 1) + fib (x - 2)

dividedBy :: Integral a => a -> a -> (a, a)
dividedBy num denom = go num denom 0
  where go n   d count
         | n < d = (count, n)
         | otherwise = go (n - d) d (count + 1)
