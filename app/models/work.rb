class Work < ApplicationRecord
  belongs_to :admin
  belongs_to :employee
  belongs_to :item
  belongs_to :address

end
