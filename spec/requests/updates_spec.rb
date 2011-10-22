require 'spec_helper'

describe "Updates" do
  describe "GET /updates" do
    it "works! (now write some real specs)" do
      get updates_path, nil, {'HTTP_AUTHORIZATION' =>  ActionController::HttpAuthentication::Basic.encode_credentials("admin", "admin") }
      response.status.should be(200)
    end
  end
end
