require 'CSV'
require_relative 'dinodex.rb'
require_relative 'dinosaur.rb'
require_relative 'print_dinodex.rb'
include Print_Dinodex

# Main code

dinodex = Dinodex.new
print_welcome
print_menu

user_input = gets.chomp.downcase

while user_input != "quit"
	case user_input
	when "facts" then dinodex.print_single_dino_facts
	when "search" then dinodex.search
  else print_invalid
	end
	print_menu
	user_input = gets.chomp.downcase
end

print_goodbye
