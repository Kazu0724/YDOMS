class WorkComment < ApplicationRecord
  belongs_to :work
  belongs_to :employee
end
