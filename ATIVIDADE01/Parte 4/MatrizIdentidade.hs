matrizIdentidade :: Int -> [[Int]]
matrizIdentidade n =
  let xs = [1 .. n]
  in xs >>= \x -> [xs >>= \y -> [fromEnum (x == y)]]
  
main = do
  print(matrizIdentidade 10)
