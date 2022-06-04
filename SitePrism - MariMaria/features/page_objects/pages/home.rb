require_relative '../sections/header'
module Pages
    class Home < SitePrism::Page
            set_url '/'
            element :close_ad, 'div[class="bf-news-modal__close"]'
            section :header, Sections::Header, 'header'
            #element :loader,  'body > .load'
            element :input_name_register, 'div.bf-newsletter__field input[name="name"]'
            element :input_email_register, 'div.bf-newsletter__field input[name="email"]'
            element :btn_send_contact, 'div.bf-newsletter__field button'
            element :success_message, '#swal2-content'
            
        def search_for(product)
                close_ad.click
                header.click_and_input_to_search(product)
                #header.search_p.click
                #header.input_search.set product
                #header.button_search.click
                #wait_until_loader_visible(wait:5) 
                #ou invisivel(invisible)
      end

      def send_contact(msg_data)
            close_ad.click
            input_name_register.set msg_data[:name]
            input_email_register.set msg_data[:email]           
            btn_send_contact.click
      end

    end

end
        
    #toda classe que estiver dentro de uma Page, deve estar dentro de um modulo pages
    #toda classe que estiver dentro de uma Section, deve estar dentro de um modulo sections