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


  describe "validations" do
    it "is not valid without a username" do
      user_example.username = ""
      expect(user_example).to_not be_valid
    end

    it "is not valid without a password_hash" do
      user_example.password_hash = ""
      expect(user_example).to_not be_valid
    end

    it "does not have the the same password and password hash" do
      expect("abc123").to_not eq(user_example.password_hash)
    end
  end
end
