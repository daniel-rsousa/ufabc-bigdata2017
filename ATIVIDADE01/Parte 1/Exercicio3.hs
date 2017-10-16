mod_int :: Integer -> Integer
mod_int x = x `mod` 5 --calcula o resto da divisão por 5

conv_string :: Integer -> String
conv_string  valor --retorna "True" se "valor" for 0, caso contrário, "False"
  | valor == 0 = "True"
  | otherwise = "False"
  
mult5 :: Integer -> String
mult5 x = conv_string $ mod_int x --primeiro calcula o resto da divisão por 5, depois passa o resultado para a função conv_string

main = do
    print(mult5 3)
  
