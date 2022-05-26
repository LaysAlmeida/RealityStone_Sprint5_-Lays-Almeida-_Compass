require 'capybara/dsl'

class GoogleHome < BasePage
include Capybara::DSL

def search_for(query)
    find("input[name='q']").set query
    click_button 'Pesquisa Google'
end

end