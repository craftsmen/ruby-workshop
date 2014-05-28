class Talk < ActiveRecord::Base
  validates :name, presence: true
end
