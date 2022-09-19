User.destroy_all

User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
            admin: true)

99.times do |n|
    name = "Exmaple name#{n}"
    email = "example-#{n+1}@railstutorial.org"
    password = "password"
    puts email
    User.create!(name: name,
    email: email,
    password:              password,
    password_confirmation: password)
end
