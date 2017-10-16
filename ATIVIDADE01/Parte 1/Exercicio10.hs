lista = [x | x <- [1..2017], (x `mod` 400 == 0) || (x `mod` 4 == 0) && (x `mod` 100 /= 0)] --gera a lista dos anos bissextos de 1 a 2017

tupladelista :: [a] -> ([a],[a])
tupladelista lista = (take (length lista `div` 2) lista, drop (length lista `div` 2) lista) --primeira metade foi inserida com a função take e a outra com a função drop

main = do
  print(tupladelista lista)
