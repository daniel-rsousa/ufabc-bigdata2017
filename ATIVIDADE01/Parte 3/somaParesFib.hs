listaFib = 1 : 2 : prox listaFib
  where
    prox (x:t@(y:resto)) = (x+y) : prox t
    
listaFibPares = [x | x <- takeWhile (\x -> x < 4000000) listaFib, (x `mod` 2) == 0] --gera a listaFibPares com auxílio da função takeWhile para valores menores que 4000000 de listaFib e pares

soma :: [Integer] -> Integer
soma list = sum list --soma-se os valores de uma lista com o auxilio da função sum, podendo ser implementado conforme trecho abaixo comentado
--soma [] = 0
--soma(x:xs) = x + soma(xs)

main = do
  print(soma listaFibPares)
