#language: pt
@search
@register
Funcionalidade: Cadastro
    COMO um usuário do E-commerce Mari Maria makeup
    QUERO poder buscar por diferentes produtos
    PARA personalizar minhas compras

Contexto: Estar na home
    Dado que esteja na home

@register_ok
Cenário: Entrar em contato pelo Newsletter HomePage
    Quando entrar em contato pelo formulário da home
    Então deverá retornar um modal de mensagem enviada