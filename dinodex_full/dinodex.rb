require 'CSV'
require_relative 'dinosaur.rb'
require_relative 'print_dinodex.rb'
require_relative 'dinodex_parser.rb'
include Print_Dinodex

class Dinodex
	attr_accessor :dinos_hash

	def initialize
		@parser = Dinodex_Parser.new
		@dinos_hash = @parser.get_dinos_hash
	end

	def search
		print_search_message
		input = gets.chomp.downcase
		input = print_categories(input).downcase
		categories = input.split(" ")

		results = find_dinos(categories[0])
		categories.each do |cat| 
			results.delete_if { |k, v| (find_dinos(cat).has_key?(k) == false) }
		end
		if results.empty? then print_no_results
		else results.each { |key, val| puts key.to_s.capitalize }
		end
	end

	def print_single_dino_facts
		print_facts_prompt
		input = gets.chomp.downcase
		input = print_dino_names(input).capitalize

		while dinos_hash[input.to_sym] == nil
			print_error("dinosaur", "dinosaurs")
			input = gets.chomp.downcase
			input = print_dino_names(input).capitalize
		end
		dinos_hash[input.capitalize.to_sym].print_info
	end

	def find_dinos(category)
		dinos_found = Hash.new
		category.downcase!
		case category
		when "biped", "bipeds"
			dinos_found = dinos_hash.select { |k, v| v.walk == "Biped" }
		when "quadruped", "quadrupeds"
			dinos_found = dinos_hash.select { |k, v| v.walk == "Quadruped" }
		when "carnivore", "carnivores"
			dinos_found = dinos_hash.select do |k, v| 
				v.diet != "Herbivore" && v.diet != "Non Carnivore"
			end
		when "big"
			dinos_found = dinos_hash.select { |k, v| v.weight.to_i > 4000 }
		when "small"
			dinos_found = dinos_hash.select do |k, v| 
				v.weight.to_i > 0 && v.weight.to_i <= 4000 
			end
		when "jurassic", "albian", "cretaceous", "triassic", "oxfordian", "permian"
			dinos_found = find_time_period(category) 
		end
		return dinos_found
	end

	def find_time_period(time)
		time.capitalize!
		dinos_found = dinos_hash.select do |k, v|
			v.period == "#{time}" || v.period == "Early #{time}" || v.period == "Late #{time}"
		end
	end

end

def to_names(hash)
	names_array = Array.new
	hash.each do |key, val|
		k = key.to_s
		names_array.push(k)
	end
	return names_array.sort!
end
