# frozen_string_literal: true

class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :title
      t.string :bytitle
      t.string :keywords
      t.string :description

      t.timestamps
    end
  end
end