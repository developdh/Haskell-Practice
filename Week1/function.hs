main = do
    putStrLn "Hello, World!"
    print (sumtorial 5)

sumtorial :: Integer -> Integer
sumtorial 0 = 0
sumtorial n = n + sumtorial (n-1)