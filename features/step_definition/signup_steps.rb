Dado("que eu acesse o site da Lendico na página Sign up") do
    @signup = SignUp.new
    @signup.load
end

Dado("que eu tenha preenchido as credenciais com dados validos") do
    @signup.preencher_credenciais

end
  
Quando("eu aciono o botão Sign up") do
    @signup.clicar_botao_signup
end

Então("e criada a conta de acesso") do
    assert_text("Welcome to Address Book")
end