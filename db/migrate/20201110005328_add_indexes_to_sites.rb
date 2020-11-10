class AddIndexesToSites < ActiveRecord::Migration[6.0]
  def up
    add_index :sites, :status_data, using: :gin
    add_index :sites, :url
    add_index :sites, :country
    add_index :sites, :name
  end

  def down
    remove_index :sites, :status_data, using: :gin
    remove_index :sites, :url
    remove_index :sites, :country
    remove_index :sites, :name
  end
end
