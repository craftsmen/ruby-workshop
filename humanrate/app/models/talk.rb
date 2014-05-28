class Talk < ActiveRecord::Base
  validates :name, presence: true
  has_many :votes
end
