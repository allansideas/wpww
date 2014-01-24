class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.string :description
      t.string :owner_name
      t.string :owner_email
      t.string :identifier
      t.timestamps
    end
  end
end
