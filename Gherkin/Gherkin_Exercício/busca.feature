#language: pt-br
@search
Funcionalidade: Busca
    COMO um usuário do E-commerce MbuyStore
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
    Então deverão ser retornados resultados na busca

    Exemplos:
    |     produto      |
    | Casa e Decoração |          
    | Casa Inteligente |
    |   Eletrônicos    |
    | Moda e Acessórios|
    |  Saúde e Beleza  |
    |       Pets       |
    |     Infantil     |