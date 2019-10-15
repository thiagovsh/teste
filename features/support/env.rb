require 'rspec'
require "rubygems"
require 'rake'
require 'cucumber'
#require 'selenium-webdriver'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'httparty'
require 'site_prism'
require 'pry'
require 'faker'
require 'cpf_faker'
#require 'childprocess'


# Configuracao Drivers Capybara
Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.register_driver :firefox do |app|
  Capybara::Selenium::Driver.new(app, browser: :firefox)
end
  

# Driver de Execução Chrome Headless (Default)
Capybara.register_driver :chrome_headless do |app|
  capabilities = Selenium::WebDriver::Remote::Capabilities.chrome('chromeOptions' => { 'args' =>["--headless", '--no-sandbox', '--start-fullscreen'] } )
  Capybara::Selenium::Driver.new(app, :browser => :chrome, desired_capabilities: capabilities)
end

#Config escolha Browser de execução
  @driver = case ENV['BROWSER']
  when 'firefox'
    :firefox
  when 'headless'
    :chrome_headless
  else
    :chrome
  end

  # Set Driver padrao para execucao
  Capybara.default_driver = @driver

  # Maximize Browser
  Capybara.page.driver.browser.manage.window.maximize

  # Timeout padrao de 30s
  Capybara.default_max_wait_time = 20

  # Desabilitar ou Habilitar Autosave para Screenshot para testes Failed
  #Capybara::Screenshot.autosave_on_failure = false

## Definicao do ambiente de execucao Default:homolog
  $ambiente =  ENV['AMBIENTE'] || 'homolog'

## Definição do arquivo de URL de acesso aos sistemas ou serviços
  $base_url = YAML.load_file('./config/environment.yml')
  
