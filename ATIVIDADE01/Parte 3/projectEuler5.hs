divisivel20 :: Integer -> Bool
divisivel20 x = divisivel20b x 2

divisivel20b ::  Integer -> Integer -> Bool
divisivel20b x y
  | (x `mod` y) > 0 = False
  | ((x `mod` y) == 0) && (y == 20) = True
  | otherwise = divisivel20b x (y+1)
  
projectEuler5 :: Integer -> Integer
projectEuler5 x
  | divisivel20 x == True = x --se divisivel20 de 'x' retornar True, retorna x
  | otherwise = projectEuler5(x+20) --caso contrário chama projectEuler5 com (x+20), pois não precisa testar todos os numeros, mas somente os multiplos de 20 até encontrar o valor que atenda os critérios
  
main = do
  print(projectEuler5 20)
