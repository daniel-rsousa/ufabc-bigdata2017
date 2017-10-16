lista = [x | x <- [1..2017], (x `mod` 400 == 0) || (x `mod` 4 == 0) && (x `mod` 100 /= 0)] --gera a lista dos anos bissextos de 1 a 2017
lista2 = [x | x <- drop (length lista - 10) lista] --lista2 recebe os 10 últimos anos bissextos com auxílio da função lenght

main = do
  print(lista2)
