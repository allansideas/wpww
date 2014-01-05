class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :amount_payed_cents

      t.timestamps
    end
  end
end
