class CreateTournaments < ActiveRecord::Migration[5.1]
  def change
    create_table :tournaments do |t|
      t.string :name
      t.datetime :event_start
      t.integer :num_rounds
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
