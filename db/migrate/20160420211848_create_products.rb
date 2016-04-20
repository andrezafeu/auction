class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.datetime :bidding

      t.timestamps null: false
    end
  end
end
