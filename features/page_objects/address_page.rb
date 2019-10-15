class Address < SitePrism::Page
    
    # Elementos
    element :link_menu_addresses, 'a[href="/addresses"]'
    element :campo_first_name,  "#address_first_name"
    element :campo_last_name,  "#address_last_name"
    element :campo_address1,  "#address_street_address"
    element :select_state,  "select[id='address_state']"
    element :radio_country_us, "input[id='address_country_us']"
    element :botao_create_address,  "input[id='new_address']"
    element :link_new_addresses, 'a[href="/addresses/new"]'
    element :campo_zip_code, "#address_zip_code"
    element :campo_city, "#address_city"

     # Métodos
     def preencher_formulario_new_address
        campo_first_name.set "teste"
        campo_last_name.set "10"
        campo_address1.set "rua caetaninha"
        select_state.select "Alaska"
        campo_zip_code.set "123456789"
        radio_country_us.click
        campo_city.set "Calgari"
    end 

  end
