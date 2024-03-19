class Item < ApplicationRecord
  has_many :works, dependent: :destroy

end
