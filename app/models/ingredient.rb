class Ingredient < ActiveRecord::Base
  has_many :doses
  before_destroy :check_for_cocktails
  validates :name, presence: true, uniqueness: true
end
