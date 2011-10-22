require 'spec_helper'

describe Update do
  it "updates users upon save" do
    user = Factory.create(:user, :new_to_update => false)
    user.new_to_update.should eq(false)
    Factory.create(:update)
    User.all.each do |user| 
      user.new_to_update.should eq(true)
    end
  end
end
