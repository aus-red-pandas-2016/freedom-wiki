class Article < ActiveRecord::Base
  validates :name, :content, presence: true

  belongs_to :user
  belongs_to :group
  has_and_belongs_to_many :categories
end
