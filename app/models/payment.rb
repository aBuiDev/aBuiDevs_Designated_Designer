class Payment < ApplicationRecord
  belongs_to :project
  has_one :project
end
