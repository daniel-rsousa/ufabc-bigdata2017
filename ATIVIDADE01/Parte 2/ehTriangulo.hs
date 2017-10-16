ehTriangulo :: Int -> Int -> Int -> String
ehTriangulo x y z --a função testa se a soma de dois lados é maior que o terceiro lado, que determina se é um triangulo
  | (z + y > x) && (x + z > y) && (x + y > z) = "eh triangulo!" --retorna "eh triangulo" se a soma de dois lados for maior que o terceiro lado
  | otherwise = "Nao eh triangulo!" --caso contrário, retorna "Nao eh triangulo"
  
main = do
  print(ehTriangulo 2 1 3)
