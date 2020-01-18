class CreateAfterparties < ActiveRecord::Migration[5.1]
  def change
    create_table :afterparties do |t|
      t.string :name
      t.string :number
      t.integer :days
      t.text :comment

      t.timestamps
    end
  end
end
