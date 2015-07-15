require 'CSV'

module Print_Dinodex

	def print_welcome
		puts "\nWelcome to Dinodex!"
	end

	def print_invalid
		puts "Invalid selection!"
	end

	def print_goodbye
		puts "\nThanks for using Dinodex!"
	end

	def print_menu
		puts "\nDinodex Menu \n"\
			 "    Facts - Print facts for a single dinosaur\n"\
			 "    Search - Search for dinosaurs in one or more categories\n"\
			 "    Quit - Quit Dinodex"
		print "\nPlease enter an option: "
	end

	def print_search_message
		puts "Please enter one or more categories, separated by a space."
		print "To see a list of all categories, enter 'all': "
	end

	def print_no_results
		puts "\nSorry, no dinosaurs fit that criteria!"
	end

	def print_facts_prompt
		print "Please enter the name of a dinosaur: "
	end

	def print_error(type, plural_type)
		puts "Sorry, that is not an accepted #{type}. "\
		 	   "Please enter a different #{type}."
		print "To see a list of all #{plural_type}, type 'all': "
	end

	def print_categories(input)
		while input == "all"
			puts "    Biped\n"\
					 "    Quadruped\n"\
					 "    Carnivore\n"\
					 "    Jurassic\n"\
					 "    Albian\n"\
					 "    Cretaceous\n"\
					 "    Triassic\n"\
					 "    Oxfordian\n"\
					 "    Permian\n"\
					 "    Big\n"\
					 "    Small\n"
			print "Please enter one or more categories: "
			input = gets.chomp.downcase
		end
		return input
	end

	def print_dino_names(input)
		while input == "all"
			puts "Dinodex has facts about the following dinosaurs: "
			puts "  Abrictosaurus\n"\
					 "  Afrovenator\n"\
					 "  Albertosaurus\n"\
					 "  Albertonykus\n"\
					 "  Baryonyx\n"\
					 "  Carcharodontosaurus\n"\
					 "  Deinonychus\n"\
					 "  Diplocaulus\n"\
					 "  Dracopelta\n"\
					 "  Giganotosaurus\n"\
					 "  Giraffatitan\n"\
					 "  Megalosaurus\n"\
					 "  Melanorosaurus\n"\
					 "  Paralititan\n"\
					 "  Quetzalcoatlus\n"\
					 "  Suchomimus\n"\
					 "  Yangchuanosaurus\n"
			print "Please enter the name of a dinosaur: "
			input = gets.chomp.downcase
		end
		return input
	end

end
