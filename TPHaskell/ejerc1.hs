
losCuatrosIguales :: Int -> Int -> Int -> Int -> Bool
losCuatrosIguales a b c d = (a == b) && (b == c) && (c == d)
main:: IO()
main = do
    
    print ("resultado: " ++ show (losCuatrosIguales 2 2 2 2))
