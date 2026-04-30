
alinearFrase :: String -> String->String->Int->String
alinearFrase frase1 frase2 frase3 n
    | n< (length frase1 + length frase2 + length frase3) = "n es menor al largo total de las frases, no se puede alinear"
    |otherwise = frase1 ++ espacioIzq ++ frase2 ++ espacioDer ++ frase3
    where
        espacios = n - (length frase1 + length frase2 + length frase3)
        espacioIzq = hacerEspacios (espacios `div` 2)
        espacioDer = hacerEspacios (espacios - (espacios `div` 2))

hacerEspacios :: Int -> String
hacerEspacios n
    | n <= 0 = ""
    | otherwise = " " ++ hacerEspacios (n - 1)