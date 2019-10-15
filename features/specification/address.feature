#language: pt
#UTF-8

@address
Funcionalidade: Criar endereço 
Eu como
Quero 
Para

  Contexto: Acesso ao site Lendico área logada
    Dado que eu esteja logado no site Lendico 

  Cenário: Criar endereço válido
    Dado que eu tenha acessado o menu Addresses  
    Quando eu preencher o formulário New Address com dados válidos
    Então devo visualizar o endereço criado com sucesso