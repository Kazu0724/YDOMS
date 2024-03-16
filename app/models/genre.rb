class Genre < ApplicationRecord
  has_many :addresses, dependent: :destroy

  enum color: { red:0, blue:1, yellow:2, lime:3, purple:4, orenge:5 }
end
