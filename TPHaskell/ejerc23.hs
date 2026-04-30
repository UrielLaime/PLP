
mayorYmin :: (Int, Int) -> (Int, Int)->(Int, Int) -> (Int, Int)
mayorYmin (a,b) (c,d) (e,f) = ( mayorDeLosTres (mayorDePar (a,b)) (mayorDePar (c,d)) (mayorDePar (e,f))
    , menorDeLosTres (minimoDePar (a,b)) (minimoDePar (c,d)) (minimoDePar (e,f))
    )

mayorDeLosTres :: Int->Int->Int->Int
mayorDeLosTres a b c 
    | a >= b && a >= c = a
    | b >= a && b >= c = b
    | otherwise = c

menorDeLosTres :: Int->Int->Int->Int
menorDeLosTres a b c 
    | a <= b && a <= c = a
    | b <= a && b <= c = b
    | otherwise = c
mayorDePar :: (Int,Int)-> Int
mayorDePar (a,b) 
    | a >= b = a
    | otherwise = b

minimoDePar :: (Int,Int)-> Int
minimoDePar (a,b) 
    | a <= b = a
    | otherwise = b