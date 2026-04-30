
factorial :: Int->Int
factorial 0=1
factorial n= n*factorial (n-1)


factorialTable :: Int -> Int -> String
factorialTable m n
    |m<0 = "Los valores deben ser  >=0"
    |m==n = show m ++ " | " ++ show (factorial m) ++ "\n"
    |m<n = show m ++ " | " ++ show (factorial m) ++ "\n" ++ factorialTable (m+1) n

main:: IO()
main= do
    putStrLn (factorialTable 2 5)

--factorialTable:: Int -> Int -> String
--  factorialTable m n
--  |m<0 = "Los valores deben ser  >=0"
--	|m==n = show m ++ " | " ++ show (fact m) ++ "\n"
--	|m<n  = show m ++ " | " ++ show (fact m) ++ "\n" ++ factorialTable (m+1) n

--fact:: Int -> Int
--fact n 
 --  | n>1 = fact(n-1)* n
  -- | otherwise = 1