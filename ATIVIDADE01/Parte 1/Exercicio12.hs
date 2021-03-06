converte :: [Char] -> [Integer]
converte [] = []
converte (x:xs) = chartoint x : converte(xs) --recebe a String ,cujo caracteres devem ser de '0' a '9' e monta a nova lista, convertendo em Integer com auxílio da função chartoint cada caractere

chartoint :: Char -> Integer
chartoint caractere --recebe um Char e retorna o Integer correspondente
  | caractere == '0' = 0
  | caractere == '1' = 1
  | caractere == '2' = 2
  | caractere == '3' = 3
  | caractere == '4' = 4
  | caractere == '5' = 5
  | caractere == '6' = 6
  | caractere == '7' = 7
  | caractere == '8' = 8
  | caractere == '9' = 9
  | otherwise = error "Esta função somente funciona com caracteres '0' a '9'"


lista = "0123456789"

main = do
  print(converte lista)
