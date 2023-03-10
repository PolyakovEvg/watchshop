# frozen_string_literal: true

class Cart < ApplicationRecord
  has_many :products, through: :cart_items
  has_many :cart_items, dependent: :destroy
  belongs_to :user

  validates :user_id, presence: true
end
