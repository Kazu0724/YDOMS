class Work < ApplicationRecord
  belongs_to :admin
  belongs_to :employee
  belongs_to :item
  belongs_to :address
  has_many :work_comments, dependent: :destroy

  def self.search_for(content)
    Work.where('work.address.name LIKE ?', '%' + content + '%')
  end

end
