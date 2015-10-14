class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
      t.string :title
      t.datetime :begins
      t.datetime :ends
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
