class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: false }
  mount_uploader :photo, PhotoUploader
end
