teste = [[1,0,0],[0,1,0],[0,0,1]]
teste2 = [[1,2,3],[2,4,6],[4,8,12]]

somaDiagonalPrincipal :: [[Int]] -> Int
somaDiagonalPrincipal matriz = somaDiagonalPrincipalb ((length matriz)-1) 0 matriz

somaDiagonalSecundaria :: [[Int]] -> Int
somaDiagonalSecundaria matriz = somaDiagonalPrincipalb ((length matriz)-1) 0 (reverse matriz) --a soma da diagonal secundaria é a soma da matriz reversa, dado em reverse 'matriz'

somaDiagonalPrincipalb :: Int -> Int -> [[Int]] -> Int
somaDiagonalPrincipalb index soma matriz
  | index == 0 = soma+((matriz!!index)!!index)
  | otherwise = somaDiagonalPrincipalb (index-1) (soma+((matriz!!index)!!index)) matriz

main = do
  print(somaDiagonalSecundaria teste2)
