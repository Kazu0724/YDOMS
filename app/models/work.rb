class Work < ApplicationRecord
  belongs_to :admin
  belongs_to :employee
  belongs_to :item
  belongs_to :address
  has_many :work_comments, dependent: :destroy

  validates :address_id, presence: true
  validates :item_id,presence: true
  validates :admin_id, presence: true
  validates :employee_id, presence: true

  validates :date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :amount, presence: true

  def self.search_for(content)
    Work.joins(:address).where('addresses.name LIKE ?', '%' + content + '%')
  end

end
