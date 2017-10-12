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

    it "is not valid without a model" do
      car_example.model = ""
      expect(car_example).to_not be_valid
    end

    it "is not valid without a category" do
      car_example.category = ""
      expect(car_example).to_not be_valid
    end

    it "is not valid without a top_speed" do
      car_example.top_speed = nil
      expect(car_example).to_not be_valid
    end

    it "is not valid without horsepower" do
      car_example.horsepower = nil
      expect(car_example).to_not be_valid
    end
  end

  describe "associations" do
    let(:user_example) { User.create(
      username: "loveChild88",
      password: "nothing")
    }

    it "belongs to a user" do
      user_example.cars << car_example
      expect(car_example.user_id).to eq(user_example.id)
    end
  end
end
