#language: pt-br
@pdp
Funcionalidade: Página do Produto
    SENDO um usuário do MbuyStore
    QUERO poder personalizar os produtos que irei comprar na página do produto
    PARA ter uma melhor experiência de compra

Contexto: Estar na página do produto
    Dado que esteja na home
    Quando realizar uma busca por um produto existente
    E acessar a página do produto

@change_color_pdp
Cenário: Alterar a cor do produto na PDP
    Quando alterar a cor do produto
    Então deverá alterar a cor do produto apresentado na PDP

@choose_size_pdp
Cenário: Escolher o tamanho
    Quando selecionar o tamanho do produto
    Então deverá o tamanho do produto apresentado na PDP

@increase_decrease_product_quantity
@increase_decrease_product_quantity_pdp
Cenário: Aumentar/Diminuir a quantidade de produtos na PDP
    Quando aumentar/diminuir a quantidade do produto
    Então deverá alterar a quantidade exibida no PDP

@increase_decrease_product_quantity
@increase_decrease_product_quantity_cart
Cenário: Aumentar/Diminuir a quantidade do produto na PDP aumenta/diminui no carrinho
    Quando aumentar/diminuir a quantidade do produto
    E adicionar o produto ao carrinho
    Então o produto deverá ser adicionado com a quantidade aumentada/diminuída

@add_product_to_cart_pdp
Cenário: Adicionar produto ao carrinho pela PDP
    Quando adicionar o produto ao carrinho
    Então o produto deverá ser adicionado ao carrinho com sucesso