tipoTriangulo :: Int -> Int -> Int -> String
tipoTriangulo x y z
  | (ehTriangulo x y z) == False = "Nao eh triangulo"  --testa se é um triângulo
  | (x == y) && (y == z) && (z == x) = "Triangulo equilatero" --se todos os lados forem iguais, retorna "Triangulo equilatero"
  | (x == y) || (y == z) || (z == x) = "Triangulo isosceles"  --se dois lados forem iguais, retorna "Triangulo isosceles"
  | otherwise = "Triangulo escaleno" --caso contrário retorna "Triangulo escaleno"

ehTriangulo :: Int -> Int -> Int -> Bool
ehTriangulo x y z
  | (z + y > x) && (x + z > y) && (x + y > z) = True
  | otherwise = False
  
main = do
  print(tipoTriangulo 4 3 5)
