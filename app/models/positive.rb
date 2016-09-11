class Positive < ApplicationRecord

  validates :title, presence: true
  validates :description, presence: true
  validates :when, presence: true

  has_many :pos_comments

end
