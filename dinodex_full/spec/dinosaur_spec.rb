require_relative '../dinodex.rb'
require_relative 'spec_helper.rb'

describe Dinodex do

  before(:each) do
    @dinodex = Dinodex.new
  end

  it 'should output the correct dino facts about Abrictosaurus' do
    expect{@dinodex.dinos_hash[:Abrictosaurus].print_info}.to output("\nAbrictosaurus\n  Period: Jurassic\n  Diet type: Non Carnivore\n  Weight: 100 lbs\n  Walking type: Biped\n").to_stdout
  end

  it 'should not output empty weight category with dinosaur Albertonykus' do
    expect{@dinodex.dinos_hash[:Albertonykus].print_info}.to output("\nAlbertonykus\n  Period: Early Cretaceous\n  Diet type: Insectivore\n  Continent: North America\n  Walking type: Biped\n  Description: Earliest known Alvarezsaurid.\n").to_stdout
  end

end
