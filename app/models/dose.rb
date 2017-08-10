class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail
  validates :amount_needed, presence: true
end
