
Quando('entrar em contato pelo formulário da home')do
        contact_data = Factory::Dynamic.user_for_registering
        @home_page.send_contact(contact_data)
end

Então('deverá retornar um modal de mensagem enviada')do
        expect(@home_page).to have_success_message
end