class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.decimal :start_price
      t.decimal :buy_now
      t.boolean :sold
      t.references :auction, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
