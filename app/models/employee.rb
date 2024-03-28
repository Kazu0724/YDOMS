class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :works, dependent: :destroy
  has_many :work_comments, dependent: :destroy

  # validates :last_name, presence: true
  # validates :first_name,presence: true
  # validates :last_name_kana, presence: true
  # validates :first_name_kana, presence: true
  # validates :employee_number, presence: true
  # validates :phone_number,presence: true
  # validates :car_number, presence: true


  def employee_name
    last_name + first_name
  end


  # ゲストログイン用メソッド
  GUEST_EMPLOYEE_EMAIL = "guest@example.com"

  def self.guest
    find_or_create_by!(email: GUEST_EMPLOYEE_EMAIL) do |employee|
      employee.password = SecureRandom.urlsafe_base64
      employee.last_name = "ゲスト"
      employee.first_name = "ユーザ"
      employee.last_name_kana = "ゲスト"
      employee.first_name_kana = "ユーザ"
      employee.employee_number = "9999"
      employee.phone_number = "99999999999"
      employee.car_number = "9999"
    end
  end

  def guest_employee?
    email == GUEST_EMPLOYEE_EMAIL
  end


  def self.search_for(content)
    #Employee.where('last_name || first_name LIKE ?', '%' + content + '%')
    Employee.where('last_name LIKE ?', '%' + content + '%').or(Employee.where('first_name LIKE ?', '%' + content + '%'))
  end

end
