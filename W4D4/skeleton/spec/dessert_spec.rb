require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  subject(:dessert) { Dessert.new("cake", 0, chef)}
  

  describe "#initialize" do
    it "sets a type" do
      dessert.type = 'drink'
      expect(dessert.type).to eq('drink')
    end

    it "sets a quantity" do
      dessert.quantity = 5
      expect(dessert.quantity).to eq(5)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredient).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      dessert.quantity = "a"
      expect{ dessert.quantity }.to raise_error(TypeError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      dessert.add_ingredient('flour')
      dessert.add_ingredient('suger')
      dessert.add_ingredient('milk')
      expect(dessert.ingredient).to eq(['flour', 'suger', 'milk'])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      dessert.mix!
      expect(dessert.ingredient).not_to eq(['flour', 'suger', 'milk'])
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"

    it "raises an error if the amount is greater than the quantity"
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
