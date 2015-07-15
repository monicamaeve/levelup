require_relative '../dinodex.rb'
require_relative 'spec_helper.rb'

describe Dinodex do
=begin
	before(:each) do
		@dinodex = Dinodex.new
	end
=end

	it 'should return only bipeds when finding dinos with category: biped' do
		@dinodex = Dinodex.new
		hash = @dinodex.find_dinos("biped")
		arr = to_names(hash)
		expect(arr).to match_array(['Abrictosaurus', 'Afrovenator', 'Albertonykus', 'Albertosaurus', 'Baryonyx', 'Carcharodontosaurus', 'Deinonychus', 'Giganotosaurus', 'Megalosaurus', 'Suchomimus', 'Yangchuanosaurus'].sort)
	end

	it 'should return only bipeds when finding dinos with category: bipeds' do
		@dinodex = Dinodex.new
		hash = @dinodex.find_dinos("bipeds")
		arr = to_names(hash)
		expect(arr).to match_array(['Abrictosaurus', 'Afrovenator', 'Albertonykus', 'Albertosaurus', 'Baryonyx', 'Carcharodontosaurus', 'Deinonychus', 'Giganotosaurus', 'Megalosaurus', 'Suchomimus', 'Yangchuanosaurus'].sort)
	end

	it 'should return only quadrupeds when finding dinos with category: quadruped' do
		@dinodex = Dinodex.new
		hash = @dinodex.find_dinos("quadruped")
		arr = to_names(hash)
		expect(arr).to match_array(['Diplocaulus', 'Dracopelta', 'Giraffatitan', 'Melanorosaurus', 'Paralititan', 'Quetzalcoatlus'].sort)
	end

	it 'should return only quadrupeds when finding dinos with category: quadrupeds' do
		@dinodex = Dinodex.new
		hash = @dinodex.find_dinos("quadrupeds")
		arr = to_names(hash)
		expect(arr).to match_array(['Diplocaulus', 'Dracopelta', 'Giraffatitan', 'Melanorosaurus', 'Paralititan', 'Quetzalcoatlus'].sort)
	end

	it 'should return only carnivores when finding dinos with category: carnivore' do
		@dinodex = Dinodex.new
		hash = @dinodex.find_dinos("carnivore")
		arr = to_names(hash)
		expect(arr).to match_array(['Albertosaurus', 'Albertonykus', 'Baryonyx', 'Deinonychus', 'Diplocaulus', 'Megalosaurus', 'Giganotosaurus', 'Quetzalcoatlus', 'Yangchuanosaurus', 'Afrovenator', 'Carcharodontosaurus', 'Suchomimus'].sort)
	end

	it 'should return only carnivores when finding dinos with category: carnivores' do
		@dinodex = Dinodex.new
		hash = @dinodex.find_dinos("carnivores")
		arr = to_names(hash)
		expect(arr).to match_array(['Albertosaurus', 'Albertonykus', 'Baryonyx', 'Deinonychus', 'Diplocaulus', 'Megalosaurus', 'Giganotosaurus', 'Quetzalcoatlus', 'Yangchuanosaurus', 'Afrovenator', 'Carcharodontosaurus', 'Suchomimus'].sort)
	end

	it 'should return only dinos > 4000 lbs when finding dinos with category: big' do
		@dinodex = Dinodex.new
		hash = @dinodex.find_dinos("big")
		arr = to_names(hash)
		expect(arr).to match_array(['Giraffatitan', 'Paralititan', 'Suchomimus', 'Baryonyx', 'Giganotosaurus', 'Yangchuanosaurus'].sort)
	end

	it 'should return only dinos <= 4000 lbs when finding dinos with category: small' do
		@dinodex = Dinodex.new
		hash = @dinodex.find_dinos("small")
		arr = to_names(hash)
		expect(arr).to match_array(['Albertosaurus', 'Deinonychus', 'Megalosaurus', 'Quetzalcoatlus', 'Abrictosaurus', 'Carcharodontosaurus', 'Melanorosaurus'].sort)
	end

	it 'should return only Jurassic dinos when finding dinos with category: jurassic' do
		@dinodex = Dinodex.new
		hash = @dinodex.find_dinos("jurassic")
		arr = to_names(hash)
		expect(arr).to match_array(['Abrictosaurus', 'Afrovenator', 'Giraffatitan', 'Megalosaurus'].sort)
	end

	it 'should return all Cretaceous dinos when finding dinos with category: cretaceous' do
		@dinodex = Dinodex.new
		hash = @dinodex.find_dinos("cretaceous")
		arr = to_names(hash)
		expect(arr).to match_array(['Albertosaurus', 'Albertonykus', 'Baryonyx', 'Deinonychus', 'Giganotosaurus', 'Quetzalcoatlus', 'Paralititan', 'Suchomimus'].sort)
	end
end
