require 'spec_helper'

describe HomeController do

  describe "GET 'index'" do
    it "returns http success" do
      user = Factory(:user)
      sign_in user

      get 'index', :id => user.id
      response.should be_success
    end
  end

end
