class Group < ActiveRecord::Base
  validates_presence_of :name, :description
  has_many :memberships
  has_many :members, :through => :memberships, :source => :user

  has_many :articles

  def member_count
    self.members.count
  end
end
