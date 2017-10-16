listaFib = 1 : 2 : prox listaFib --gera a lista de numeros de Fibonacci com a função geradora prox
  where
    prox (x:t@(y:resto)) = (x+y) : prox t

main = do 
  print(take 10 listaFib) --imprime os 10 primeiros números
