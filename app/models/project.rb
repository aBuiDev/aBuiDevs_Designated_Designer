class Project < ApplicationRecord
  belongs_to :client
  # belongs_to :designer
  enum payment_status: [ "Pending", "Complete" ]
end
