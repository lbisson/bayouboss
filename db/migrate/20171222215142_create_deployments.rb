class CreateDeployments < ActiveRecord::Migration[5.1]
  def change
    create_table :deployments do |t|
      t.string :deployment
      t.text :description
      t.string :suit
      t.integer :num

      t.timestamps
    end
  end
end
