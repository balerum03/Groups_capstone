class CreateGroupOfItems < ActiveRecord::Migration[6.0]
  def change
    create_table :group_of_items do |t|
      t.references :item, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
