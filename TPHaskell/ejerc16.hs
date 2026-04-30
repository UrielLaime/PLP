
hacerEspacios :: Int -> String
hacerEspacios 1 = " "
hacerEspacios n = " " ++ hacerEspacios(n-1)

main :: IO ()
main= do
    
    print ("a"++hacerEspacios 2++"resultado")