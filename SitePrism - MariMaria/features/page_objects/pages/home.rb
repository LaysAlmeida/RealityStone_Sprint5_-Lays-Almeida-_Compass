require_relative '../sections/header'
module Pages
    class Home < SitePrism::Page
            set_url '/'
            element :close_ad, 'div[class="bf-news-modal__close"]'
            section :header, Sections::Header, 'header'
            #element :loader,  'body > .load'
            
        def search_for(product)
                close_ad.click
                header.click_and_input_to_search(product)
                #header.search_p.click
                #header.input_search.set product
                #header.button_search.click
                #wait_until_loader_visible(wait:5) 
                #ou invisivel(invisible)
      end
                      
    end

end
        
    #toda classe que estiver dentro de uma Page, deve estar dentro de um modulo pages
    #toda classe que estiver dentro de uma Section, deve estar dentro de um modulo sections