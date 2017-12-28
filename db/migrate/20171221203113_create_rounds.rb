class CreateRounds < ActiveRecord::Migration[5.1]
  def change
    create_table :rounds do |t|
      t.string :strategy
      t.string :deployment
      t.string :scheme1
      t.string :scheme2
      t.string :scheme3
      t.string :scheme4
      t.string :scheme5
      t.references :tournament, foreign_key: true

      t.timestamps
    end
  end
end
