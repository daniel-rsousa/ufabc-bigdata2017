exercicio7 :: Double -> (Double, Double)
exercicio7 ang = (val1, val2)
  where
    val1 = sqrt((1 - cos(ang))/2)  --calcula para valor positivo
    val2 = -val1                   --calcula para valor negativo
    
main = do
    print(exercicio7 4)
