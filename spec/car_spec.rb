require 'spec_helper'

describe Car do
  let(:car_example) { Car.new(
      make: "Subaru",
      model: "Impresa STI",
      category: "compact-sport",
      top_speed: 150,
      horsepower: 310
    ) }

  describe "validations" do
    it "is not valid without a make" do
      car_example.make = ""
      expect(car_example).to_not be_valid
    end
  end

  describe "associations" do

  end
end
