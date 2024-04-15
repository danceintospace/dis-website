# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Create or find the user by email
user = User.find_or_initialize_by(email: "naijeria@gmail.com")

# Set user attributes
user.password = "password"
user.password_confirmation = "password"

# Save the user record and handle errors
if user.save
  puts "User created successfully"
else
  puts "Error creating user: #{user.errors.full_messages.join(', ')}"
end