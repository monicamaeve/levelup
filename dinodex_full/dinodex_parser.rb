require 'CSV'
require_relative 'dinodex.rb'
require_relative 'dinosaur.rb'
require_relative 'print_dinodex.rb'

class Dinodex_Parser

	HEADERS = {
		"Genus" => :name,
		"Period" => :period,
		"Carnivore" => :diet,
		"Weight" => :weight,
		"Walking" => :walking,
		"NAME" => :name,
		"PERIOD" => :period,
		"DIET" => :diet,
		"WEIGHT_IN_LBS" => :weight,
		"WALKING" => :walking,
		"CONTINENT" => :continent,
		"DESCRIPTION" => :description
	}

	def initialize
		@dinos_hash = Hash.new
		init_dinos('african_dinosaur_export.csv')
		init_dinos('dinodex.csv')
	end

	def init_dinos(csv)
		csv = CSV.read(csv, :headers => true, :converters => :convert_diet, 
									      :header_converters => :convert_headers)
		csv.each do |row|
			next_dino = Dinosaur.new(row[:name], row[:period], row[:diet], row[:weight], 
				 											 row[:walking], row[:continent], row[:description])
	  	@dinos_hash[row[:name].to_sym] = next_dino
	  end
	end

	def get_dinos_hash
		return @dinos_hash
	end

	CSV::Converters[:convert_diet] = lambda do |field|
		if field == "Yes" then field = "Carnivore" 
		elsif field == "No" then field = "Non Carnivore"
		else field = field
		end
	end

	CSV::HeaderConverters[:convert_headers] = lambda do |field|
		field = HEADERS[field]
	end

end
