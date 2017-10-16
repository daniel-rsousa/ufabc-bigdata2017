divisivel20 :: Integer -> Bool
divisivel20 x = divisivel20b x 2 --chama divisivel20b

divisivel20b ::  Integer -> Integer -> Bool
divisivel20b x y
  | (x `mod` y) > 0 = False --se resto de divisão de 'x' e 'y' for maior que 0, retorna False
  | ((x `mod` y) == 0) && (y == 20) = True --se resto de divisão de 'x' e 'y' for 0 e 'y' igual a 20, retorna True
  | otherwise = divisivel20b x (y+1) --caso contrário, chama divisivel20b com 'x' e ('y'+1)
  
main = do
  print(divisivel20 2520)
