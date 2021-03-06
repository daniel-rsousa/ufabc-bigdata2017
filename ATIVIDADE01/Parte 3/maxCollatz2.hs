-- Nesta segunda versão, é calculado o máximo de 1000 elementos e este valor é computado em uma lista de máximos, que por sua vez é encontrado o máximo dos máximos. Para cada interação, a lista de valores tem o seu valor inicial reajustado, onde na primeira interação começa com 1 e vai até 1000, na segunda interação de 1001 até 2000, e assim por diante até o máximo de 1000000, definido em listaMax. No final é procurado o número que corresponde a maior sequência de Collatz

collatz :: Integer -> Integer
collatz x
  | (x `mod` 2) == 0 = x `div` 2
  | otherwise = (3*x) + 1
  
collatzLen :: Integer -> Integer
collatzLen num = collatzLenb num 1

collatzLenb :: Integer -> Integer -> Integer
collatzLenb num soma
  | num == 1 = soma
  | otherwise = collatzLenb (collatz num) (soma+1)
  
collatzList :: [Integer] -> [Integer]
collatzList [] = []
collatzList (x:xs) = (collatzLen x) : collatzList xs

collatzMax :: Integer -> Integer --função auxiliar que gera o valor máximo de collatzList a partir de uma lista sequencial de 1000 dados, contados a partir no primeiro elemento 'inicio'
collatzMax inicio = maximum (collatzList (take 1000 (iterate (\x -> x+1) inicio)))

listaMax = [x | x <- [1, 1001..1000000]] --gera lista de valores a serem inicializados em collatzListMax, até o máximo de 1000000 ([1, 1001, 2001, 3001..1000000])

collatzListMax :: [Integer] -> [Integer] --gera uma lista de máximos de 1000 em 1000 elementos (função collatzMax) até o máximo de 1000000
collatzListMax [] = []
collatzListMax (x:xs) = (collatzMax x) : collatzListMax xs

collatzNum :: Integer -> Integer
collatzNum num = collatzNumb num 1

collatzNumb :: Integer -> Integer -> Integer
collatzNumb num soma
  | num == collatzLen(soma) = soma
  | otherwise = collatzNumb num (soma+1)

main = do
  print(collatzNum (maximum (collatzListMax listaMax))) --retorna o numero de collatz que tem a maior cadeia  (valor máximo de collatzListMax listaMax)
