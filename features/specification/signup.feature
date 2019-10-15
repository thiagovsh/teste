#language: pt
#UTF-8

@sign_up
Funcionalidade: Criar conta de acesso no site Lendico
Eu como
Quero 
Para

Contexto: Acessar a o site Lendico
  Dado que eu acesse o site da Lendico na página Sign up
  
  Cenário: Criar uma conta de acesso
    Dado que eu tenha preenchido as credenciais com dados validos
    Quando eu aciono o botão Sign up
    Então e criada a conta de acesso