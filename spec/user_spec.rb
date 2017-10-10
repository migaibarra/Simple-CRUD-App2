require 'spec_helper'

describe User do
  let(:user_example) do
    user_creation = User.new(
      username: "AceDragOn",
      password: "abc123"
    )

    user_creation.password
    user_creation.save!
    return user_creation
  end

  let(:car_example) { Car.new(
      make: "Honda",
      model: "Civic",
      category: "compact-economy",
      top_speed: 130,
      horsepower: 187
    )}

  describe "validations" do
    it "is not valid without a username" do
      user_example.username = ""
      expect(user_example).to_not be_valid
    end

    it "is not valid without a password_hash" do
      user_example.password_hash = ""
      expect(user_example).to_not be_valid
    end
  end

  describe "associations" do
    it "user can have no cars associated with it" do
      expect(user_example.cars).to eq([])
    end

    it "user can have a car associated with it" do
      user_example.cars << car_example
      expect(user_example.cars).to eq([car_example])
    end

    it "user can have multiple cars associated with it" do
      another_car_example = Car.new({
          make: "BMW",
          model: "330i xdrive",
          category: "compact-executive",
          top_speed: 165,
          horsepower: 310
        })

      user_example.cars << car_example
      user_example.cars << another_car_example
      expect(user_example.cars.length).to eq(2)
    end
  end

  describe "methods" do
    it "does not have the the same password and password hash" do
      expect("abc123").to_not eq(user_example.password_hash)
    end
  end
end
