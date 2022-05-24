#language; pt-br
@regression
@pdp

Funcionalidade: Página do Produto
    SENDO um usuário do AdvantagesOnlineShopping
    QUERO poder personalizar os produtos que irei comprar na página do produto
    PARA ter uma melhor experiência de compra

#PDP = Página do Produto

Contexto: Estar na página do produto
    Dado que esteja na home
    Quando realizar uma busca por um produto existente
    E acessar a página do produto

@change_color_pdp
Cenário: Trocar a cor do produto na PDP
    Quando alterar a cor do produto
    Então deverá alterar a cor do produto apresentado na PDP

@increase_product_quantity
@increase_product_quantity_only_pdp
Cenário: Aumentar a quantidade do produto na PDP
    Quando aumentar a quantidade do produto
    Então deverá alterar a quantidade exibida no PDP

@increase_product_quantity
@increase_product_quantity_validate_cart
Cenário: Aumentar a quantidade do produto na PDP aumenta no carrinho
    Quando aumentar a quantidade do produto
    E adicionar o produto ao carrinho
    Então o produto deverá ser adicionado com a quantidade aumentada

@add_product_to_cart_pdp
Cenário: Adicionar produto ao carrinho pela PDP
    Quando adicionar o produto ao carrinho
    Então o produto deverá ser adicionado ao carrinho com sucesso
