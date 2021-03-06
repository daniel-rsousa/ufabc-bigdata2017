coeficienteBinomial :: (Integer, Integer) -> Integer
coeficienteBinomial (a, b) = (fatorial a) `div` (fatorial b * fatorial (a - b)) --recebe uma tupla com os coeficientes 'a' e 'b' e retorna o coeficiente (definição de coeficiente Binomial) -> 'a'! / ('b'! x ('a'-'b')!)

fatorial :: Integer -> Integer
fatorial n
  | n == 0 = 1
  | n > 0 = fatorial (n-1) * n
  
main = do
  print(coeficienteBinomial(10, 6))
