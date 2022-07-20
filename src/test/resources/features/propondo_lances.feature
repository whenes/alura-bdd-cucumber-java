# language: pt

Funcionalidade: Propondo Lances ao leilao

  Cenario: Propondo um unico lance valido
    Dado um lance valido
    Quando propoe ao leilao
    Entao o lance e aceito

  Cenario: Propondo varios lances validos
    Dado um lance de 10.0 reais do usuario "fulano"
    E um lance de 15.0 reais do usuario "beltrano"
    Quando propoe varios lances ao leilao
    Entao os lances sao aceitos

  Esquema do Cenario: Cenario: Propondo um lance invalido
    Dado um lance invalido de <valor> reais e do usuario '<nomeUsuario>'
    Quando propoe ao leilao
    Entao o lance nao e aceito

    Exemplos:
    | valor | nomeUsuario |
    | 0     | fulano      |
    | -1    | beltrano    |


  Cenario: Propondo uma sequencia de lances
    Dado dois lances
      | valor | nomeUsuario |
      | 10.0  | fulano      |
      | 15.0  | fulano      |
    Quando propoe varios lances ao leilao
    Entao o segundo lance nao e aceito
