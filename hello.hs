multPi x = x * 3.14

printInc n = print plusTwo
  where plusTwo = n + 2


printInc2 n = let plusTwo = n + 2
              in print plusTwo

printInc2' n =
  (\plusTwo -> print plusTwo) (n + 2)

z = 7

waxOn = x * 5
  where x = y ^ 2

y = z + 8
