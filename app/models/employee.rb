class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :works, dependent: :destroy
  has_many :work_comments, dependent: :destroy

  def employee_name
    last_name + first_name
  end

  def self.search_for(content)
    Employee.where('last_name || first_name LIKE ?', '%' + content + '%')
  end

end
