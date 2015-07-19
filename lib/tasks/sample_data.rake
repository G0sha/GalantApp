namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "GG0sha",
                 email: "gg0sha@ya.ru",
                 password: "09051945",
                 password_confirmation: "09051945",
                 admin: true)
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end

  desc "Create admin user"
  task createadmin: :environment do
    User.create!(name: "admin",
                 email: "admin@admin.ru",
                 password: "admin1234",
                 password_confirmation: "admin1234",
                 admin: true)
  end
end