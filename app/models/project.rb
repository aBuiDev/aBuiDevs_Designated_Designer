class Project < ApplicationRecord
  belongs_to :client
  belongs_to :designer, optional: true
  enum payment_status: [ "Pending Payment", "Payment Complete" ]
  enum designer_status: [ "Planning", "Awaiting Draft Approval", "Design Complete" ]
  enum client_status: [ "Reviewing Draft", "Reviewing Final Design", "Design Approved" ]
  enum project_status: [ "Draft", "With Designer", "Pending Approval", "Project Complete" ]
  has_one_attached :picture
  has_one :chatbox
end
