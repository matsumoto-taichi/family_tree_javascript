class CreateTrees < ActiveRecord::Migration[5.2]
  def change
    create_table :trees do |t|
      t.integer :depth
      t.integer :father_id
      t.string :name
      t.integer :gender

      t.timestamps
    end
  end
end
