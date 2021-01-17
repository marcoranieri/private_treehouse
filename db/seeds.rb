Idea.destroy_all
User.destroy_all

User.create! username: "Marco", email: "test@test.com", password: "123456"

10.times do |i|
  Idea.create! user: User.all.sample, title: "Title - #{i}", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
end

puts "User created (#{User.count})"
puts "Idea created (#{Idea.count})"