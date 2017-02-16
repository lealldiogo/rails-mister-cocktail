class Ingredient < ApplicationRecord
  has_many :doses, before_remove: :check_doses_children
  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: false }

  def check_doses_children
    self.doses.blank?
  end
end
