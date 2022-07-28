class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0}

validate :clothing_type
  def clothing_type
    if mens_apparel == false && womens_apparel == false
      errors.add(:mens_apparel, "must define at least either men's 
      or women's apparel")
      errors.add(:womens_apparel, "must define at least either men's or women's apparel")
    end
  end
end
