-- parametric polymorphism: a type's variables (parameters) are not constrained
-- to some specific type. eg `id :: a -> a` can be any type
--
-- a type is a "set of possible values"
-- type variable is a "set of possible types"
--
-- "a function is polymorphic when its type signature has variables that can
-- represent more than one type

{-data Mood = Blah | Woot deriving Show-}

{-changeMood Blah = Woot-}
{-changeMood Woot = Blah-}

{-addStuff :: Integer -> Integer -> Integer-}
{-addStuff a b = a + b + 5-}

{-g :: a -> b -> c -> b-}
{-g a b c = b-}

-- haskell infers the most generally applicable (polymorphic) type that is still
-- correct

c :: a -> b -> a
c a b = a

c'' :: b -> a -> b
c'' b a = b

c' :: a -> b -> b
c' a b = b

r :: [a] -> [a]
r a = reverse a

co :: (b -> c) -> (a -> b) -> (a -> c)
co fun1 fun2 fun3 = fun1 (fun2 fun3)

{-fun1 :: b -> c-}
{-fun2 :: a -> b-}
{-fun3 :: a -> c-}

a :: (a -> c) -> a -> a
a c a = a

a' :: (a -> b) -> a -> b
a' a b = a b
