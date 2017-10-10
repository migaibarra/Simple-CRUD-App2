require 'spec_helper'

describe User do
  let(:user_example) { User.new(
    username: "AceDrace",
    password: "abc123"
    ) }
    
  describe "validations" do
    it "is not valid without a username" do

    end
  end
end
