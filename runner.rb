require 'pp'

require_relative 'user'

puts "---------------------------------------------------"
puts "Hey you there, come here, we have options for you:"
puts "---------------------------------------------------"
puts "1 - registration"
puts "2 - exit the program"

asw = gets.chomp

if asw == "1"
  while asw == "1"
    print "Name:"
    name = gets.chomp
    print "Email:"
    email = gets.chomp
    user = User.new(email, name)
    user.save
    puts "Thaks #{name.capitalize} for your registration"
    puts 'Do you want to register another user?(1 for yes and 2 to exit)'
    asw = gets.chomp
  end
end
