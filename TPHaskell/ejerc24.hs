
imprimirNumero :: Int -> String
imprimirNumero n
    | n < 10 = imprimirNveces n n ++ "\n"
    | otherwise =
        imprimirNumero (n `div` 10) ++
        imprimirNveces (n `mod` 10) (n `mod` 10) ++ "\n"

imprimirNveces :: Int -> Int -> String
imprimirNveces _ 0 = ""
imprimirNveces n m = show n ++ imprimirNveces n (m-1)