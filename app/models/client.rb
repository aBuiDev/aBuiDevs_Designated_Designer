class Client < ApplicationRecord
  belongs_to :user
  has_many :projects
  has_many :messages
end
