class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :works, dependent: :destroy

  validates :last_name, presence: true
  validates :first_name,presence: true
  validates :last_name_kana, presence: true
  validates :first_name_kana, presence: true
  validates :employee_number, presence: true, uniqueness: true

end
