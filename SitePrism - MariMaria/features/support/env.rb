require 'cucumber'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'selenium-webdriver'
require 'rspec'
require 'pry'

ENVIROMENT = ENV['ENVIROMENT']
ENVIROMENT_CONFIG = YAML.load_file(File.dirname(__FILE__) + "/enviroment/#{ENVIROMENT}.yml")
puts ENVIROMENT_CONFIG
URL = ENVIROMENT_CONFIG['url']  

Capybara.register_driver :my_chrome do |app|
    caps = Selenium::WebDriver::Remote::Capabilities.chrome("goog:chromeOptions"=> 
        {"args" => ["--ignore-ssl-errors", "--ignore-certificate-errors", "display-popup-blocking", 
          "--disable-gpu", "--disable-translate", "--incognito", "--start-maximized",  "--no-sandbox", "--acceptInsecureCerts=true",    
          "--window-size= 1420,835", "--disable-impl-side-painting", "--debug_level=3"]})
    
    if ENV['HEADLESS']
        caps['goog:chromeOptions']['args'] << '--headless'
    end
    
        #options = { browser: :chrome, desired_capabilities: caps}
    Capybara::Selenium::Driver.new(app, :browser => :chrome, capabilities: caps)
end


Capybara.default_driver = :my_chrome
Capybara.app_host = URL
Capybara.default_max_wait_time = 10