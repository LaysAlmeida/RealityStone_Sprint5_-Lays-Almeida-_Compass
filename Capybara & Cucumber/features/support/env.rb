require 'cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'capybara/cucumber'

Capybara.default_driver = :selenium_chrome
Capybara.app_host = 'https://google.com.br'
#ao adicionar o app_host + a url base desejada, no visite só precisará estar escrito '/'
#ex.: visit('/')  