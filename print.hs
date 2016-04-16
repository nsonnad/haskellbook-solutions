module Print where

hello :: String
hello = "hello"

world :: String
world = "world"

main :: IO ()
main = do
  putStrLn greeting
  where greeting = concat [hello, " // ", world]
