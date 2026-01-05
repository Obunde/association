class Food < ApplicationRecord
  belongs_to :shop
  has_many :order_foods
  has_many :orders, through: :order_foods

  # STI (Single Table Inheritance) setup
  self.inheritance_column = :type
end