#language: pt-br
# OBS.: No E-commerce escolhido, para efetivar uma compra, a maneira de realizar o login é feita da mesma forma de realização do cadastro.

Funcionalidade: Realizar Login de Usuário
    COMO usuário do E-commerce MbuyStore
    QUERO auenticar meu login
    PARA poder realizar minhas compras na plataforma

Contexto: 
    Dado que o usuário esteja na página de login
    E já possua cadastro válido na plataforma

Esquema do Cenário: Validar a autenticação do usuário
    Quando realizar o login do tipo "<tipo>"
    Então é exibido ao usuário "<mensagem>"

    Exemplos: 
    |    tipo        |               mensagem                                |
    |   válido       |          Login realizado com sucesso                  |
    |  inválido      |          Login ou senha inválidos                     |
    |  obrigatório   |          Login ou senha não estão preenchidos         |

Esquema do Cenário: Login de usuário com sucesso
    Quando informar campos do tipo "<nome_completo>", "<email>", "<cpf>", "<numero_telefone>" 
    Então deverá ser exibido "<mensagem>"

    Exemplos:
    |  nome_completo   |            email         |        cpf        |     numero_telefone     |                mensagem                   |
    |                  |    teste@teste.com       |   012.345.678-90  |   +55(55)95555-5555     |   Campo de nome completo obrigatório      |
    |  Luana Fernandes |                          |   012.345.678-90  |   +55(55)95555-5555     |   Campo de Email obrigatório              |
    |  Luana Fernandes |    teste@teste.com       |                   |   +55(55)95555-5555     |   Campo de CPF obrigatório                |
    |  Luana Fernandes |    teste@teste.com       |   012.345.678-90  |                         |   Campo de número de telefone obrigatório |
    |  Luana Fernandes |    teste@teste.com       |   012.345.678-90  |    +55(55)95555-5555    |   Login realizado com sucesso             |
    
# OBS.: No E-commerce escolhido, para efetivar uma compra, a maneira de realizar o login é feita da mesma forma de realização do cadastro.