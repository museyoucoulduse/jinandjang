class Positive < ApplicationRecord

  validates :title, presence: true
  validates :description, presence: true
  validates :when, presence: true

 
end
