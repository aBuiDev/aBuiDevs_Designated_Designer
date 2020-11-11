class Project < ApplicationRecord
  belongs_to :client
  belongs_to :designer
  has_one :confirmation
  has_one :payment
  has_one :finalisation
end
