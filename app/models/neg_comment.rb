class NegComment < ApplicationRecord
  validates :body, presence: true
  validates_inclusion_of :positive_reaction, in: [true, false]
end
