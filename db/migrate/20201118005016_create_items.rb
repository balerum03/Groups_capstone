# frozen_string_literal: true

class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.references :author, foreign_key: { to_table: 'users' }
      t.string :name
      t.integer :amount

      t.timestamps
    end
  end
end
