class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :group_id, null: false
      t.string :name
      t.string :email
      t.integer :amount_paid_cents, null: false
      t.text :description

      t.timestamps
    end
  end
end
