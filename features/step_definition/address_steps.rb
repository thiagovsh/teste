Dado("que eu esteja logado no site Lendico") do
    step "que eu esteja na home do site Lendico"
    step "acessar o menu Sign in"
    step "preencher as credenciais com dados validos"
    step "devo visualizar a home do site"
end

Dado("que eu tenha acessado o menu Addresses") do
    @address = Address.new
    @address.link_menu_addresses.click
end
  
  Quando("eu preencher o formulário New Address com dados válidos") do
   @address.link_new_addresses.click
   @address.preencher_formulario_new_address
   sleep 2
   binding.pry
   @address.botao_create_address
  end
  
  Então("devo visualizar o endereço criado com sucesso") do
  assert_text("Address was successfully created.")
  end