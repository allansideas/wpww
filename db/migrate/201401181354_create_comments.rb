class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :group_id, null: false
      t.string :name
      t.string :body

      t.timestamps
    end
  end
end
