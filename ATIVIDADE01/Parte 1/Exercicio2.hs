mod_int :: Integer -> Integer
mod_int x = x `mod` 3 --calcula o resto da divisão por 3

conv_string :: Integer -> String
conv_string  valor --retorna "True" se "valor" for 0, caso contrário, "False"
  | valor == 0 = "True"
  | otherwise = "False"
  
mult3 :: Integer -> String
mult3 x = conv_string $ mod_int x --primeiro calcula o resto da divisão por 3, depois passa o resultado para a função conv_string

main = do
    print(mult3 3)
  
