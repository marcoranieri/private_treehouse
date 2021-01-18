# Spring Cleaning Day
Idea.destroy_all
User.destroy_all

# Create USERS
User.create! username: "Marco", email: "test@test.com", password: "123456", github_username: "marcoranieri"

# Create IDEAS
10.times do |i|
  Idea.create! user: User.all.sample, title: "Title - #{i}", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
end

# Create TAGS
last_idea = Idea.last
last_idea.tag_list.add("UX")
last_idea.tag_list.add("UI")
last_idea.save!


puts "User created (#{User.count})"
puts "Idea created (#{Idea.count})"