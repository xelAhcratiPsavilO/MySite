class CreateRsvps < ActiveRecord::Migration[5.1]
  def change
    create_table :rsvps do |t|

      t.timestamps
    end
  end
end
