ehPrimo :: Integer -> Bool
ehPrimo n
  | n == 0 = False --se 'n' for 0 ou 1, retorna False (definição de número primo)
  | n == 1 = False
  | otherwise = ehPrimob n 2 

ehPrimob :: Integer -> Integer -> Bool
ehPrimob x y
  | x == y = True --caso 'x' for igual a 'y', então o número é primo (definição) e retorna True
  | (x `mod` y) == 0 = False --se resto de divisão de 'x' e 'y' for 0, retorna False
  | otherwise = ehPrimob x (y+1) --caso contrário, chama-se ehPrimob com 'x' e 'y'+1
  
main = do
  print(ehPrimo 23)
