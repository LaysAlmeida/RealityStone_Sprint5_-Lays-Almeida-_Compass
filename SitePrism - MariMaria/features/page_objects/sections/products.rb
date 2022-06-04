module Sections
    class Products < SitePrism::Section
    element :name, 'article[id="65"]'
    element :price, 'a.btn'
    element :image, 'picture.bf-shelf-item__media'
    end
end    