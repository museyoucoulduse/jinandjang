class Negative < ApplicationRecord

  validates :title, presence: true
  validates :description, presence: true
  validates :when, presence: true
  
  has_many :neg_comments
  
end
