class Group < ActiveRecord::Base
  validates :name, :description, {presence: true}

  has_and_belongs_to_many :categories
  has_many :users, :through => :groups_users
  has_many :articles
end
