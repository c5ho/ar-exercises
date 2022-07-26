# class ApparelType < ActiveModel::Validator
#   def validate(store)
#     store.mens_apparel || store.womens_apparel
#   end


class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0}
end
