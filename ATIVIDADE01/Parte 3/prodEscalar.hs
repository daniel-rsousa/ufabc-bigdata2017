vetor1 = [x | x <- [1..3]]
vetor2 = [x | x <- [4..6]]

prodVetores :: [Integer] -> [Integer] -> [Integer]
prodVetores (v:vs) (u:us) = v*u : prodVetores vs us --recebe dois vetores e retorna um vetor com o produto de elemento a elemento dos vetores de entrada
prodVetores _ _           = []

prodEscalar :: [Integer] -> [Integer] -> Integer
prodEscalar x y = sum (prodVetores x y) --soma-se todos os valores de um vetor

main = do
  print(prodEscalar vetor1 vetor2)

