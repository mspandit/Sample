# https://github.com/RailsApps/rails3-devise-rspec-cucumber/wiki/Tutorial

RSpec.configure do |config|
  config.include Devise::TestHelpers, :type => :controller
end
