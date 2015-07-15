require 'CSV'
require_relative 'dinodex.rb'

class Dinosaur
	attr_accessor(:name, :period, :diet, :weight, :walk, :continent, :description)

	def initialize(name_in, per_in, diet_in, weight_in, walk_in, cont_in, desc_in)
		@name = name_in
		@period = per_in
		@diet = diet_in
		@weight = weight_in
		@walk = walk_in
		@continent = cont_in
		@description = desc_in
	end

	def print_info
		puts "\n#{name}"
		puts "  Period: #{period}" if period
		puts "  Diet type: #{diet}" if diet
		puts "  Continent: #{continent}" if continent
		puts "  Weight: #{weight} lbs" if weight
		puts "  Walking type: #{walk}" if walk
		puts "  Description: #{description}" if description
	end

end
