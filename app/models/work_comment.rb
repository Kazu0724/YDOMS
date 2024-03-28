class WorkComment < ApplicationRecord
  belongs_to :work
  belongs_to :employee

  validates :body, presence: true

end
