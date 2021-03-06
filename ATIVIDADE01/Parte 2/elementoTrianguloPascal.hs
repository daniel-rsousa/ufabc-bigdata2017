elementoTrianguloPascal :: (Integer, Integer) -> Integer
elementoTrianguloPascal (i, j) = coeficienteBinomial((i-1), (j-1)) + coeficienteBinomial((i-1), j) --retona o elemento do triângulo de Pascal com o auxilio da função coeficienteBinomial de ('i'-1 , 'j'-1) somado com o coeficienteBinomial de ('i'-1 , 'j') (definição do elemento do triângulo de Pascal)

coeficienteBinomial :: (Integer, Integer) -> Integer
coeficienteBinomial (a, b) = (fatorial a) `div` (fatorial b * fatorial (a - b))

fatorial :: Integer -> Integer
fatorial n
  | n == 0 = 1
  | n > 0 = fatorial (n-1) * n
  
main = do
  print(elementoTrianguloPascal(2, 1))
