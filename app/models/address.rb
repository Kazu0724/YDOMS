class Address < ApplicationRecord
  has_many :works, dependent: :destroy
  belongs_to :genre

  validates :name, presence: true, uniqueness: { scope: :genre.name }
  validates :postal_code, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true

  def work_address_name
    genre.name + '  ' + name
  end

  def self.search_for(content)
    Address.where('name LIKE ?', '%' + content + '%')
  end

end
