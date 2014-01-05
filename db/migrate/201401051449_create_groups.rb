class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :description
      t.string :identifier
      t.timestamps
    end
  end
end
