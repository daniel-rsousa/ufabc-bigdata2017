mod_int :: Integer -> Integer
mod_int x = (x `mod` 5) + (x `mod` 3) --calcula o resto da divisão por 3 e por 5, depois soma-se os resultados

conv_string :: Integer -> String
conv_string  valor --retorna "True" se "valor" for 0, caso contrário, "False"
  | valor == 0 = "True"
  | otherwise = "False"
  
mult35 :: Integer -> String
mult35 x = conv_string $ mod_int x --primeiro calcula o resto da divisão por 3 e 5, depois passa o resultado para a função conv_string

main = do
    print(mult35 44)
  
