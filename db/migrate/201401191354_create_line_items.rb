class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :user_id, null: false
      t.string :name
      t.integer :amount_in_cents, default: 0

      t.timestamps
    end
  end
end
