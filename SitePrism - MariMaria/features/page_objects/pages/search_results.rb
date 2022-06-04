require_relative '../sections/header'
require_relative '../sections/products'
module Pages
    class SearchResults < SitePrism::Page
        set_url '/#/?ft=search'
        #elements :products, 'li[layout="166c071e-4815-4457-9e81-ae1612dacc2b"]'
        sections :products, Sections::Products, 'div[class ="vitrine resultItemsWrapper"]'
        section :header, Sections::Header, 'header'

        def access_product_page(index)
            products[index].name.click
        
        end    
    
    end
end    