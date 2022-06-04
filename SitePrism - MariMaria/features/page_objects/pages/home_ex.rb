class FooterExemploMapeamentos < SitePrism::Section
   element :img_youtube, 'a[title="Youtube"]'
end

class ProductsExemploMapeamentos < SitePrism::Section
element :name, 'bf-shelf-item__title'
element :price, 'a.btn.btn-add-buy-button-asynchronous'
end   


class HomeExemploMapeamentos < SitePrism::Page
    set_url '/'   
   
    element :search_p, '.bf-search .bf-search__trigger' 
   
   elements :menu_itens, 'div[class="bf-header__nav"]'
   #menu_itens.first.click
  
   section :footer, FooterExemploMapeamentos, 'div.bf-footer-page__container'
   #footer.img_tiktok.click
   #footer.img_youtube.click
   
   sections :products, ProductsExemploMapeamentos, 'div[class="vitrine n20colunas"] div.bf-shelf-item__container'
   #products[2].price.click

end


