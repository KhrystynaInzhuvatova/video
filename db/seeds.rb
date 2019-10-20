5.times do |i|
  User.create!(name:"name#{i}", lastname: "lastname", role:"user", email: "example#{i}@example.com", password: '123456', password_confirmation: '123456')
end
