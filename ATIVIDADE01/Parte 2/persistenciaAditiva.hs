persistenciaAditiva :: Integer -> Integer
persistenciaAditiva x = persistenciaAditivab x 1 --recebe o valor da função persistenciaAditivab

persistenciaAditivab :: Integer -> Integer -> Integer
persistenciaAditivab x y
  | somaDigitos x < 10 = y --se somaDigitos retornar um valor de 'x' menor que 10, retorna 'y'
  | otherwise = persistenciaAditivab (somaDigitos(x)) (y+1) --caso contrário, chama persistenciaAditiva com (somaDigito 'x') e ('y'+1)
  
somaDigitos :: Integer -> Integer
somaDigitos x
  | (x `div` 10) == 0 = x
  | otherwise = (x `mod` 10) + somaDigitos (x `div` 10)

main = do
  print(persistenciaAditiva 99999999999)
