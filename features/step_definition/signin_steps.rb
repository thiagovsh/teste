Dado("que eu esteja na home do site Lendico") do
    @home = Home.new
    @home.load

  end
  
  Quando("acessar o menu Sign in") do
    @home.menu_sign_in.click

  end
  
  E("preencher as credenciais com dados validos") do
   @sign_in = SignIn.new
   @sign_in.preencher_credenciais
   @sign_in.clicar_botao_signin
  end
  
  Então("devo visualizar a home do site") do
    assert_text("Welcome to Address Book")
  end