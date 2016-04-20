module PoemLines where

mySplit :: Char -> String -> [String]
mySplit c str =
  case dropWhile (==c) str of
    "" -> []
    str' -> takeWhile (/=c) str' : mySplit c (dropWhile (/=c) str')

-- partial application!
myWords :: String -> [String]
myWords = mySplit ' '

myLines :: String -> [String]
myLines = mySplit '\n'

firstSen = "Tyger Tyger, burning bright\n"
secondSen = "In the forests of the night\n"
thirdSen = "What immortal hand or eye\n"
fourthSen = "Could frame thy fearful symmetry?"
sentences = firstSen ++ secondSen ++ thirdSen ++ fourthSen

shouldEqual =
  [ "Tyger Tyger, burning bright"
  , "In the forests of the night"
  , "What immortal hand or eye"
  , "Could frame thy fearful symmetry?"
  ]

main :: IO ()
main =
  print $ "Are they equal? " ++ show (myLines sentences == shouldEqual)

