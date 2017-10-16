--PARCIALMENTE RESOLVIDO. NÃO GERA A SOLUÇÃO AUTOMATICAMENTE

data Cor = Vermelho | Verde | Marfim | Amarelo | Azul
  deriving (Show, Enum, Eq)

data Nacionalidade = Ingles | Espanhol | Ucraniano | Noruegues | Japones
  deriving (Show, Enum, Eq)

data Bebida = Cafe | Cha | Leite | SucodeLaranja | Agua
  deriving (Show, Enum, Eq)

data Cigarro = OldGold | Kools | Chesterfield | LuckyStrike | Parliament
  deriving (Show, Enum, Eq)

data Animal = Cachorro | Caramujos | Raposa | Cavalo | Zebra
  deriving (Show, Enum, Eq)

data Casa = Casa {cor :: Cor, nacionalidade :: Nacionalidade, bebida :: Bebida, cigarro :: Cigarro, animal :: Animal}
  deriving (Show, Eq)

--REGRAS ISOLADAS

--O Inglês vive na casa vermelha
inglesCasaVermelha :: [Casa] -> Bool
inglesCasaVermelha casa = or [cor (casa !! x) == Vermelho && nacionalidade (casa !! x) == Ingles | x <- [0 .. length casa - 1]]

--O Espanhol tem um cachorro
espanholCachorro :: [Casa] -> Bool
espanholCachorro casa = or [nacionalidade (casa !! x) == Espanhol && animal (casa !! x) == Cachorro | x <- [0 .. length casa - 1]]

--O café é a bebida da casa verde
cafeCasaVerde :: [Casa] -> Bool
cafeCasaVerde casa = or [bebida (casa !! x) == Cafe && cor (casa !! x) == Verde | x <- [0 .. length casa - 1]]

--O Ucraniano bebe chá
ucranianoCha :: [Casa] -> Bool
ucranianoCha casa = or [nacionalidade (casa !! x) == Ucraniano && bebida (casa !! x) == Cha | x <- [0 .. length casa - 1]]

--A casa verde fica imediatamente a direita da casa marfim
casaVerdeDireitaCasaMarfim :: [Casa] -> Bool
casaVerdeDireitaCasaMarfim casa = or [cor (casa !! x) == Marfim && cor (casa !! (x + 1)) == Verde | x <- [0 .. length casa - 2]]

--A pessoa que fuma Old Gold possui caramujos
oldGoldCaramujos :: [Casa] -> Bool
oldGoldCaramujos  casa = or [cigarro (casa !! x) == OldGold && animal (casa !! x) == Caramujos | x <- [0 .. length casa - 1]]

--A pessoa que fuma Kools mora na casa amarela
koolsCasaAmarela :: [Casa] -> Bool
koolsCasaAmarela  casa = or [cigarro (casa !! x) == Kools && cor (casa !! x) == Amarelo | x <- [0 .. length casa - 1]]

--A pessoa que mora na casa do meio bebe leite
casaDoMeioLeite :: [Casa] -> Bool
casaDoMeioLeite casa
  | bebida (casa !! 2) == Leite = True
  | otherwise = False

--O Noruegues mora na primeira casa
primeiraCasaNoruegues :: [Casa] -> Bool
primeiraCasaNoruegues casa
  | nacionalidade (casa !! 0) == Noruegues = True
  | otherwise = False

-- Verifica se uma casa está próxima da outra, levando em consideração o cigarro e o animal de estimação.
eVizinho :: [Casa] -> Cigarro -> Animal -> Bool
eVizinho casa s p = or [((cigarro (casa !! x) == s && animal (casa !! (x + 1)) == p) || (cigarro (casa !! (x + 1)) == s && animal (casa !! x) == p)) | x <- [0 .. length casa - 2]]

-- A pessoa que fuma Chesterfields mora proximo da pessoa que tem uma raposa
chesterfieldsProxRaposa :: [Casa] -> Bool
chesterfieldsProxRaposa casa = eVizinho casa Chesterfield Raposa

--A pessoa que fuma Kools mora proximo da pessoa que tem um cavalo
koolsProxCavalo :: [Casa] -> Bool
koolsProxCavalo casa = eVizinho casa Kools Cavalo

--A pessoa que fuma Lucky Strike bebe suco de laranja
strikeSucoDeLaranja :: [Casa] -> Bool
strikeSucoDeLaranja casa = or [cigarro (casa !! x) == LuckyStrike && bebida (casa !! x) == SucodeLaranja | x <- [0 .. length casa - 1]]

--O Japonês fuma Parliaments
japaneseParliaments :: [Casa] -> Bool
japaneseParliaments casa = or [nacionalidade (casa !! x) == Japones && cigarro (casa !! x) == Parliament | x <- [0 .. length casa - 1]]

--O Noruegues mora proximo da casa azul
norwegianNextBlueCasa :: [Casa] -> Bool
norwegianNextBlueCasa casa = or [((nacionalidade (casa !! x) == Noruegues && cor (casa !! (x + 1)) == Azul) || (nacionalidade (casa !! (x + 1)) == Noruegues && cor (casa !! x) == Azul)) | x <- [0 .. length casa - 2]]

--TESTA AS COMBINAÇÕES SATIZFAZENDO O PROBLEMA DA ZEBRA.
testaCombinacao :: [Casa] -> Bool
testaCombinacao casa 
  | length casa /= 5 = False
  | otherwise = and [inglesCasaVermelha casa, espanholCachorro casa, cafeCasaVerde casa, ucranianoCha casa, casaVerdeDireitaCasaMarfim casa, oldGoldCaramujos casa, koolsCasaAmarela casa, casaDoMeioLeite casa, primeiraCasaNoruegues casa, chesterfieldsProxRaposa casa, koolsProxCavalo casa, strikeSucoDeLaranja casa, japaneseParliaments casa, norwegianNextBlueCasa casa]

main = do
  print(testaCombinacao [(Casa Azul Ucraniano Cha Chesterfield Cavalo), (Casa Amarelo Noruegues Agua Kools Raposa), (Casa Verde Japones Cafe Parliament Zebra), (Casa Vermelho Ingles Leite OldGold Caramujos), (Casa Marfim Espanhol SucodeLaranja LuckyStrike Cachorro)]) --ESTA SOLUÇÃO É FALSA (Retorna False)
                
  print(testaCombinacao [(Casa Amarelo Noruegues Agua Kools Raposa), (Casa Azul Ucraniano Cha Chesterfield Cavalo), (Casa Vermelho Ingles Leite OldGold Caramujos), (Casa Marfim Espanhol SucodeLaranja LuckyStrike Cachorro), (Casa Verde Japones Cafe Parliament Zebra)]) --ESTA SOLUÇÃO É VERDADEIRA (Retorne True)


