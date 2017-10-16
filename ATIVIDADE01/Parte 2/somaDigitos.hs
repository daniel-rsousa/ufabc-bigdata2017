somaDigitos :: Integer -> Integer
somaDigitos x
  | (x `div` 10) == 0 = x --caso o resto de divisão de 'x' com 10 for 0, retorna x (que é a unidade)
  | otherwise = (x `mod` 10) + somaDigitos (x `div` 10) --caso contrário, soma-se o resto de divisão de 'x' com 10 e somaDigito com 'x' / 10 

main = do
  print(somaDigitos 123)
