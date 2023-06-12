class List < ApplicationRecord
  has_one_attached :image
  
  validates :title, presence: true
  validates :body, presence: true
  
  #rails cの時は画像のバリデーションをコメントアウトにする
  validates :image, presence: true
end
