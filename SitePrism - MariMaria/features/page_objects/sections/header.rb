module Sections
    class Header < SitePrism::Section
        element :search_p, 'div[class="bf-search"] path[d="M24 0H0V24H24V0Z"]'
        element :input_search, '.bf-search__field' 
        element :button_search, 'button.bf-search__button .icon.arrow-right'
    
        def click_and_input_to_search(text)
            search_p.click
            input_search.set text
            button_search.click

        end    


    end   

end    
