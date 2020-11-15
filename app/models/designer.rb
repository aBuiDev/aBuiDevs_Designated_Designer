class Designer < ApplicationRecord
  belongs_to :user
  has_one :project
  has_many :messages
end
