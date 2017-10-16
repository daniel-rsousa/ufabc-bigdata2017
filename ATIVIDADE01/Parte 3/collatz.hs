collatz :: Integer -> Integer
collatz x
  | (x `mod` 2) == 0 = x `div` 2 --se par, retorna 'x' / 2
  | otherwise = (3*x) + 1 --caso contrário, retorna (3 x 'x') +1
   
main = do
  print(collatz 13)
