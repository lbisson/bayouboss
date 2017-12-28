User.create!(name:  "Some'r Teeth Jones",
             email: "somer@bayouboss.com",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end

users = User.order(:created_at).take(6)
3.times do
  users.each do |user|
    name = Faker::App.name
    user.tournaments.create!(name: name,
                             num_rounds: 3,
                             cost: 10.00,
                             summary: Faker::Lorem.sentence(10),
                             event_start: Time.now) 
  end
end
