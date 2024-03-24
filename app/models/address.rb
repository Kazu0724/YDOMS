class Address < ApplicationRecord
  has_many :works, dependent: :destroy
  belongs_to :genre

  def work_address_name
    genre.name + '  ' + name
  end

  def self.search_for(content)
    Address.where('name LIKE ?', '%' + content + '%')
  end

end
