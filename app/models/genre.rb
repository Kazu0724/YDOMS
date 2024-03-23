class Genre < ApplicationRecord
  has_many :addresses, dependent: :destroy

  # カラー赤:0, 青:1, 黄:2, 緑:3, 紫:4, 橙:5
  enum color: { salmon:0, deepskyblue:1, yellow:2, greenyellow:3, violet:4, coral:5 }
end
