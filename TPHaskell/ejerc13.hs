digitoRomano :: Char ->String
digitoRomano x=
    case x of
        'I'->"1"
        'V'->"5"
        'X'->"10"

main:: IO()
main= do
    print(digitoRomano 'X')