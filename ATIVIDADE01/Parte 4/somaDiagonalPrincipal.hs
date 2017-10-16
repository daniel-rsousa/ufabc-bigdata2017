teste = [[1,0,0],[0,1,0],[0,0,1]]

somaDiagonalPrincipal :: [[Int]] -> Int
somaDiagonalPrincipal matriz = somaDiagonalPrincipalb ((length matriz)-1) 0 matriz --chama somaDiagonalPrincipalb com o tamanho da matriz, 0 e a matriz

somaDiagonalPrincipalb :: Int -> Int -> [[Int]] -> Int
somaDiagonalPrincipalb index soma matriz
  | index == 0 = soma+((matriz!!index)!!index) --se index for 0, retorna soma com o elemento em diagonal definido em "(matriz!!index)!!index"
  | otherwise = somaDiagonalPrincipalb (index-1) (soma+((matriz!!index)!!index)) matriz --caso contrário, chama somaDiagonalPrincipalb com ('index'-1) e ('soma'+((matriz!!index)!!index))

main = do
  print(somaDiagonalPrincipal teste)
