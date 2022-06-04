#language: pt-br
# OBS.: No E-commerce escolhido, para efetivar uma compra, a maneira de realizar o login é feita da mesma forma de realização do cadastro.

Funcionalidade: Realizar cadastro de usuário
    COMO usuário do E-commerce MbuyStore
    QUERO realizar meu cadastro
    PARA logar com sucesso na plataforma

Contexto:
    Dado que esteja na página de cadastro

Esquema do Cenário: Validar o cadastro de Usuários
    Quando realizar cadastro do tipo "<tipo>"
    Então é exibido ao usuário "<mensagem>"

    Exemplos: 
    |    tipo        |               mensagem                             |
    |   válido       |          cadastro realizado com sucesso            |
    |  inválido      |          campos preenchidos são inválidos          |
    | duplicidade    |    campos preenchidos já constam no banco de dados |  
                                    
Esquema do Cenário: Cadastro de usuário completo
    Quando informar campos do tipo "<nome_completo>", "<email>", "<cpf>", "<numero_telefone>" 
    Então deverá ser exibido "<mensagem>"

    Exemplos:
    |  nome_completo   |            email         |        cpf        |     numero_telefone     |          mensagem                         |
    |                  |    teste@teste.com       |   012.345.678-90  |   +55(55)95555-5555     |   Campo de nome completo obrigatório      |
    |  Luana Fernandes |                          |   012.345.678-90  |   +55(55)95555-5555     |   Campo de Email obrigatório              |
    |  Luana Fernandes |    teste@teste.com       |                   |   +55(55)95555-5555     |   Campo de CPF obrigatório                |
    |  Luana Fernandes |    teste@teste.com       |   012.345.678-90  |                         |   Campo de número de telefone obrigatório |
    |  Luana Fernandes |    teste@teste.com       |   012.345.678-90  |    +55(55)95555-5555    |   Cadastro realizado com sucesso          |

# OBS.: No E-commerce escolhido, para efetivar uma compra, a maneira de realizar o login é feita da mesma forma de realização do cadastro.