exercicio5 :: Integer -> String
exercicio5  valor
  | (valor < -1) || ((valor `mod` 2) == 0) && (valor > 0) = "True" --o parâmetro "valor" é testado se é menor que -1 ou se o resto da divisão de "valor" for 0 (indicando se o "valor" é par) e se "valor" maior que 0, retorna "True". Caso contrário, "False"
  | otherwise = "False"

main = do
    print(exercicio5 (-2))
