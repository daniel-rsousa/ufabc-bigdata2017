lista = [x | x <- [1..2017], (x `mod` 400 == 0) || (x `mod` 4 == 0) && (x `mod` 100 /= 0)] --gera a lista dos anos bissextos de 1 a 2017
lista1 = [x | x <- take 10 lista] --lista1 recebe os 10 primeiros anos bissextos

main = do
  print(lista1)
