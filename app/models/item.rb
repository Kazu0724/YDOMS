class Item < ApplicationRecord
  has_many :works, dependent: :destroy

  validates :name, presence: true, uniqueness: true

end
