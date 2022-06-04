#language: pt
@search
Funcionalidade: Busca
    COMO um usuário do E-commerce Mari Maria makeup
    QUERO poder buscar por diferentes produtos
    PARA personalizar minhas compras

Contexto: Estar na home
    Dado que esteja na home

@search_for_products
Cenário: Buscar por um produto existente
    Quando realizar uma busca por um produto existente
    Então deverão retornar os resultados digitados na busca

@search_for_different_products
Esquema do Cenário: Buscar por produtos existentes
    Quando buscar pelo produto "<produto>"
    Então deverão retornar os resultados digitados na busca

    Exemplos:
    |      produto     |
    |       Olhos      |          
    |       Lábios     |
    |       Pincéis    |
    |       Face       |
  
    