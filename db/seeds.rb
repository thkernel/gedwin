# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Add initial role in database.


# Capistrano-rails-collection cammands
#cap production rails:rake:log:clear
#cap production rails:rake:tmp:clear
#cap production rails:rake:db:drop
#cap production rails:rake:db:reset
#cap production rails:rake:db:setup
#cap production rails:rake:db:seed
#cap production rails:rake:db:migrate
#cap production rails:rake:db:rollback


# Roles

unless Role.all.present?
    roles = Role.create(
        [
            {name: "superuser"},
            {name: "root"},
            {name: "guest"},
            {name: "user"},
            {name: "demo"}

            

        ])
else
    roles = Role.all

end



# Users
unless User.all.present?
    users = User.create([
        {login: "superuser",  email: "superuser@gmail.com",  password: "AMOSXZIBITDE88", password_confirmation: "AMOSXZIBITDE88", role_id:  Role.find_by(name: "superuser").id},
        {login: "root",  email: "root@gmail.com",  password: "AMOSXZIBITDE88", password_confirmation: "AMOSXZIBITDE88", role_id: Role.find_by(name: "root").id},
        {login: "user",  email: "user@gmail.com",  password: "AMOSXZIBITDE88", password_confirmation: "AMOSXZIBITDE88", role_id:  Role.find_by(name: "user").id},
        {login: "guest",  email: "guest@gmail.com",  password: "AMOSXZIBITDE88", password_confirmation: "AMOSXZIBITDE88", role_id:  Role.find_by(name: "guest").id},
        {login: "demo",  email: "demo@gmail.com",  password: "demo2019", password_confirmation: "demo2019", role_id: Role.find_by(name: "superuser").id}


    
    ])
else   
    users = User.all
end

unless OrganizationType.all.present?
    organization_types = OrganizationType.create(
        [
            {name: "Service en informatique", user_id: users.first.id},
            {name: "ONG", user_id: users.first.id}
            

        ])
else 
    organization_types = OrganizationType.all

end




unless Organization.all.present?
    organizations = Organization.create([
        {
            name: "Auctum",  
            organization_type_id: organization_types.first.id,
            web_site: "auctum.io", 
            user_id: users.first.id
        },
        {
            name: "Logineo",  
            organization_type_id: organization_types.first.id,  
            web_site: "logineo.com", 
            user_id: users.first.id

        },
        {
            name: "Upcase",  
            organization_type_id: organization_types.first.id,  
            web_site: "upcase.com", 
            user_id: users.first.id

        },
        {
            name: "Ouagadousoft",  
            organization_type_id: organization_types.first.id,  
            web_site: "ouagadousoft.com", 
            user_id: users.first.id

        }
    
    ])
else   
    organizations = Organization.all
end



unless Support.all.present?
    supports = Support.create(
        [
            {name: "Email", user_id: users.first.id},
            {name: "Papier", user_id: users.first.id}
            

        ])

end


unless Nature.all.present?
    natures = Nature.create(
        [
            {name: "Facture", user_id: users.first.id },
            {name: "Lettre" , user_id: users.first.id },
            {name: "Devis" , user_id: users.first.id }

        ])

end


unless Service.all.present?
    services = Service.create(
        [
            {name: "Informatique" , user_id: users.first.id},
            {name: "Direction", user_id: users.first.id},
            {name: "Comptabilité", user_id: users.first.id}

        ])
else
    services = Service.all
end

unless Profile.all.present?
    profile = Profile.create([
        {
            first_name: "Amos",  
            last_name: "DEMBELE",
            service_id: services.first.id,   
            user_id: users.first.id
        },
        {
            first_name: "Alassane",  
            last_name: "BABY",
            service_id: services.first.id, 
            user_id: users.last.id
        }
    
    ])

end

unless CorrespondentType.all.present?
    correspondent_types = CorrespondentType.create(
        [
            {name: "Entreprise", user_id: users.first.id},
            {name: "ONG", user_id: users.first.id},
            {name: "Particulier", user_id: users.first.id}

        ])
else    
    correspondent_types =  CorrespondentType.all

end


unless Correspondent.all.present?
    correspondents = Correspondent.create(
        [
            {organization_name: "Auctum", correspondent_type_id: correspondent_types.first.id, user_id: users.first.id},
            {organization_name: "Logineo", correspondent_type_id: correspondent_types.first.id, user_id: users.first.id},
            {organization_name: "Ouagadousoft", correspondent_type_id: correspondent_types.first.id, user_id: users.first.id}

        ])

end



unless RegisterType.all.present?
    register_types = RegisterType.create(
        [
            {name: "COURRIER D'ARRIVÉE", user_id: users.first.id},
            {name: "COURRIER DEPART", user_id: users.first.id}
        ])
else    
    register_types =  RegisterType.all

end

unless TaskType.all.present?
    task_types = TaskType.create(
        [
            {name: "Attente reponse", user_id: users.first.id},
            {name: "Tâche réparation", user_id: users.first.id}
        ])
else    
    task_types =  TaskType.all

end