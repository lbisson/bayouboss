class CreateStrategies < ActiveRecord::Migration[5.1]
  def change
    create_table :strategies do |t|
      t.string :strategy
      t.text :description
      t.string :suit
      t.integer :num

      t.timestamps
    end
  end
end
