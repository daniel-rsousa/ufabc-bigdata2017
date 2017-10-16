lista = [x | x <- [1..2017], (x `mod` 400 == 0) || (x `mod` 4 == 0) && (x `mod` 100 /= 0)]

main = do
  print(lista)
