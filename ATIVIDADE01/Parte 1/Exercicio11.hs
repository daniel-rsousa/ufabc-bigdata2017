concatStr :: String -> String -> String
concatStr str1 str2 = str1 ++ (' ' : str2) --concatena as duas strings, onde a primeira é str1 e a segunda é a composição de ' ' e str2

main = do
  print(concatStr "oi" "Teste")
