-- Esta foi a primeira versão, onde dá problemas com uma lista de máximos com 4000000 de elementos. Após o cálculo das sequências, é encontrado o valor máximo. No final é procurado o número que corresponde a maior sequência de Collatz

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
  
lista = 1 : prox lista
  where
    prox (x:resto) = (x+1) : prox resto

collatzList :: [Integer] -> [Integer]
collatzList [] = []
collatzList (x:xs) = (collatzLen x) : collatzList xs --gera lista com os valores de collatzLen até o tamanho máximo

collatzNum :: Integer -> Integer
collatzNum num = collatzNumb num 1

collatzNumb :: Integer -> Integer -> Integer
collatzNumb num soma
  | num == collatzLen(soma) = soma --se 'num' for igual a colltazLen('soma') retorna soma
  | otherwise = collatzNumb num (soma+1)
  
main = do
  print(collatzNum(maximum (collatzList (take 40000 lista)))) --retorna o numero de collatz que tem a maior cadeia (valor máximo de collatzList de 4000) OBS: não deu para testar com 4000000, no máximo foi com 200000
  
