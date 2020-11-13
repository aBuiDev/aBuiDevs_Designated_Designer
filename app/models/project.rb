class Project < ApplicationRecord
  belongs_to :client
  belongs_to :designer, optional: true
  enum payment_status: [ "Pending", "Complete" ]
  has_one_attached :picture
end
