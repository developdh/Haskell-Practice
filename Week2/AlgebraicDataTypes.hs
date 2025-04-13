main = do
    print (safeDiv 10 2)
    print (safeDiv 10 0)
    print (failureToZero (safeDiv 10 0))
    print (getAge brent)
    print (baz brent)

data FailableDouble = Failure
                    | OK Double
  deriving Show

ex01 = Failure
ex02 = OK 3.4

safeDiv :: Double -> Double -> FailableDouble
safeDiv _ 0 = Failure
safeDiv x y = OK (x / y)

failureToZero :: FailableDouble -> Double
failureToZero Failure = 0
failureToZero (OK d)  = d

data Thing = Shoe
           | Ship
           | SealingWax
           | Cabbage
           | King
  deriving Show

-- Store a person's name, age, and favourite Thing.
data Person = Person String Int Thing
  deriving Show

brent :: Person
brent = Person "Brent" 31 SealingWax

stan :: Person
stan  = Person "Stan" 94 Cabbage

getAge :: Person -> Int
getAge (Person _ a _) = a

baz :: Person -> String
baz p@(Person n _ _) =
  "The name field of (" ++ show p ++ ") is " ++ n