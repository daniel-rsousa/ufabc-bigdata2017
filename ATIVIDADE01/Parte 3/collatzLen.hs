collatz :: Integer -> Integer
collatz x
  | (x `mod` 2) == 0 = x `div` 2
  | otherwise = (3*x) + 1
  
collatzLen :: Integer -> Integer
collatzLen num = collatzLenb num 1 --chama collatzLenb

collatzLenb :: Integer -> Integer -> Integer
collatzLenb num soma
  | num == 1 = soma --se 'num' for igual a 1, retorna 'soma'
  | otherwise = collatzLenb (collatz num) (soma+1) --caso contrário, chama collatzLenb com (collatz 'num') e ('soma' +1)
  
main = do
  print(collatzLen 13)
