class AddDetailsToTournaments < ActiveRecord::Migration[5.1]
  def change
    add_column :tournaments, :cost, :number
    add_column :tournaments, :location, :string
    add_column :tournaments, :summary, :text
  end
end
