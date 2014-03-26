require 'spec_helper'

describe User do

	it "has valid" do
     user = User.new
     user.name = "Marcio Alves"

     user.should be_valid
end 

end
