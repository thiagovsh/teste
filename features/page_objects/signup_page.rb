class SignUp < SitePrism::Page

    set_url $base_url[$ambiente]['signup']
  
  # Elementos
    element :campo_email, "#user_email"
    element :campo_password,  "#user_password"
    element :botao_signup,  "input[name='commit']"
      
  # Métodos
    def preencher_credenciais
        campo_email.set "teste@test4.com"
        campo_password.set "123456"
    end 

    def clicar_botao_signup
        botao_signup.click
    end 



end 