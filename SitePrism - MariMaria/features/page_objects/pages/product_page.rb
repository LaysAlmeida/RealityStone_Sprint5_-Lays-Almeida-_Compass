module Pages
    class ProductPage < SitePrism::Page
        set_url '/'
        elements :colors, '.bf-similar__color'
        #elements :main_img, '#slider-80'
        elements :main_img, 'li.bf-similar__item a'
        #element :before, 'a.bf-similar__link[title="Boho"]'
        #element :now, 'a.bf-similar__link[title="Divine"]'
    end    
end    