class CreateRsvps < ActiveRecord::Migration[5.1]
  def change
    create_table :rsvps do |t|
      t.string :name
      t.string :email
      t.string :attending
      t.integer :guests_number
      t.text :companions
      t.string :dietary_restrictions
      t.text :songs
      t.timestamps
    end
  end
end
