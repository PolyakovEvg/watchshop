# frozen_string_literal: true

class CreateGalleries < ActiveRecord::Migration[7.0]
  def change
    create_table :galleries do |t|
      t.integer :product_id
      t.string :img
      t.timestamps
    end
  end
end
