# frozen_string_literal: true

class Product < ApplicationRecord
  has_many :related_products
  has_many :related, through: :related_products
  has_many :galleries
  belongs_to :category
  enum :hit, { hit: 1, normal: 0 }
  # searchkick
end
