
intervaloDeAnios :: Int -> Int -> String
intervaloDeAnios anio1 anio2
    |anio2 < anio1= "Intervalo no valido"
    |anio1==anio2= show anio1 ++ esBisiesto anio1
    |otherwise = show anio1 ++ esBisiesto anio1 ++ "\n" ++ intervaloDeAnios (anio1+1) anio2

esBisiesto :: Int -> String
esBisiesto anio
    |(anio `mod` 4 == 0 && anio `mod` 100 /= 0) || (anio `mod` 400 == 0) = "Es bisiesto"
    |otherwise = "No es bisiesto"