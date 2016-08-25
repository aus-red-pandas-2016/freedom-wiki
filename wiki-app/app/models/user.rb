class User < ActiveRecord::Base
  has_secure_password

  has_many :articles
  has_many :groups, :through => :groups_users

  def fullname
    self.first_name.capitalize + " " + self.last_name.capitalize
  end
end
