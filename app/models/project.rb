class Project < ApplicationRecord
    belongs_to :designer
    belongs_to :client
end
