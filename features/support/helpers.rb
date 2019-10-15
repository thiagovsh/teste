# #Screenshots inline
# def take_screenshot_inline(file_name, result, nome_imagem = nil)
#     if nome_imagem == nil
#       nome_imagem = "IMAGEM_EVIDENCIA"
#     end
#     time = Time.now
#     timer_path = time.strftime('%Y_%m_%d').to_s
#     file_path = "report/screenshots/test_#{result}/run_#{timer_path}/"
#     file_name_normalized = time.strftime("%Y_%m_%d_%H_%M_%S").to_s + ".png"
#     screenshot = file_path + file_name_normalized
#     page.save_screenshot(screenshot, full: true)
#     r = Random.new
#     id = r.rand(0...999)
#     link = "<a onclick=\"img=document.getElementById('img_#{id}'); img.style.display = (img.style.display == 'none' ? 'block' : 'none');return false\" href=''>#{nome_imagem}</a>"
#     link = link + "<img id='img_#{id}' style='display: none;' src='screenshots/test_#{result}/run_#{timer_path}/#{file_name_normalized}'></img>"
#   return link
# end

# # Métodos de interação com janelas do Navegador
# def abrir_nova_janela_navegador
#  open_new_window
# end

# def ultima_janela_principal
#  popup = page.driver.browser.window_handles.last
#  page.driver.browser.switch_to.window(popup)
#  page.driver.browser.manage.window.maximize
# end

# def primeira_janela_principal
#  main = page.driver.browser.window_handles.first
#  page.driver.browser.switch_to.window(main)
#  page.driver.browser.manage.window.maximize
# end

  
# def validar_titulo_da_pagina(page_titulo)
#   if page.title == page_titulo  
#   puts "Página #{page_titulo} exibida com sucesso"
#   end
#     fail "Falha ao exibir a página #{page_titulo}" if page.title != page_titulo
# end


