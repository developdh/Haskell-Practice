main = do
    print list0'Things
    print (isSmall shoe)
    print (isSmall2 shoe)

data Thing = Shoe
           | Ship
           | SealingWax
           | Cabbage
           | King
  deriving Show

shoe :: Thing
shoe = Shoe

list0'Things :: [Thing]
list0'Things = [Shoe, SealingWax, King, Cabbage, King]

isSmall :: Thing -> Bool
isSmall Shoe        = True
isSmall Ship        = False
isSmall SealingWax  = True
isSmall Cabbage     = True
isSmall King        = False

isSmall2 :: Thing -> Bool
isSmall2 Ship = False
isSmall2 King = False
isSmall2 _    = True