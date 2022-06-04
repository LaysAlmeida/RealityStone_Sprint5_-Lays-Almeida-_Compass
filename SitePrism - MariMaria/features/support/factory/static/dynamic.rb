require 'faker'

module Factory
    class Dynamic
        def self.user_for_registering
            {
                name: Faker::Name.name, 
                email: Faker::Internet.email

            }
        end
    end   


end