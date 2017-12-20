class AddOrganizaerToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :organizer, :boolean, defalut: false
  end
end
