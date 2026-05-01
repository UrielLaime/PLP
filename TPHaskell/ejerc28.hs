cuadradosIntervalo :: (Int, Int) -> String
cuadradosIntervalo (a,b)
    | a > b = ""
    | esCuadrado a =
        show a ++ " " ++ show (raiz a) ++ "\n" ++ cuadradosIntervalo (a+1,b)
    | otherwise = cuadradosIntervalo (a+1,b)
  where
    raiz x = floor (sqrt (fromIntegral x))
    esCuadrado x = raiz x * raiz x == x