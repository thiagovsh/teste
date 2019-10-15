class SignIn < SitePrism::Page

  set_url $base_url[$ambiente]['home']

 # Elementos
 element :campo_email, "#session_email"
 element :campo_password,  "#session_password"
 element :botao_signin,  "input[name='commit']"
   
# Métodos
 def preencher_credenciais
     campo_email.set "teste@test4.com"
     campo_password.set "123456"
 end 

 def clicar_botao_signin
     botao_signin.click
 end 

end
