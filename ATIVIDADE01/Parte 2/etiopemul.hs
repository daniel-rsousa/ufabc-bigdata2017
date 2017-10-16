etiopemul :: Integer -> Integer -> Integer
etiopemul a b
  | a == 0 = 0 --se 'a' ou 'b' forem 0, retorna 0 (critério de parada da recursão em 'a')
  | b == 0 = 0
  | (a `mod` 2) == 1 = b + etiopemul (a`div`2) (b*2) --se 'a' for impar, retorna a soma de 'b' com a função etiopemul ('a' / 2) e ('b' x 2)
  | otherwise = etiopemul (a`div`2) (b*2) --caso contrário, retorna função etiopemul ('a' / 2) e ('b' x 2)
  
main = do
  print(etiopemul 122 35)
