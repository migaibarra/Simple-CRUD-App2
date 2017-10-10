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
  end
end
