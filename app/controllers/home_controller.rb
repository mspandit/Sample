class HomeController < ApplicationController
  before_filter :authenticate_user!

  def index
    @first_time = current_user.new_to_update?
    current_user.update_attribute(:new_to_update, false) if @first_time
    respond_to do |format|
      format.html # index.html.erb
    end
  end
end
