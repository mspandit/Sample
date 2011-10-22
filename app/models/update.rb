class Update < ActiveRecord::Base
  validates_presence_of :brief_message
  validates_presence_of :details
  
  after_save :update_users
  
  def self.latest
    Update.order("updated_at DESC").first
  end
  
  def update_users
    return unless self == Update.latest
    # TODO: do the following in a single SQL statement
    User.all.each do |user|
      user.update_attribute(:new_to_update, true)
    end
  end
end
