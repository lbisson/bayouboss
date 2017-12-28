class CreateSchemes < ActiveRecord::Migration[5.1]
  def change
    create_table :schemes do |t|
      t.string :scheme
      t.text :description
      t.string :suit
      t.integer :num

      t.timestamps
    end
  end
end
