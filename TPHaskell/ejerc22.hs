
type Autor = String
type Editorial = String
type Titulo = String

type Libro = [(Titulo, Autor, Editorial)]


libros :: Libro
libros =[("La rebelion de la granja", "Orwell", "Debolsillo"),("1984", "Orwell", "Debolsillo")]

type Nombre = String
type Telefono = String
type Directorio = [(Nombre, Telefono)]

directorios:: Directorio
directorios =[("Juan", "1234"), ("Maria", "5678"), ("Pedro", "9999")]
main :: IO ()
main = do
    print libros 
    print directorios