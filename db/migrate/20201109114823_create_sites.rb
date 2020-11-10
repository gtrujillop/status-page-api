class CreateSites < ActiveRecord::Migration[6.0]
  def change
    create_table :sites do |t|
      t.string :name
      t.string :url
      t.references :type, null: false, foreign_key: true
      t.string :country
      t.jsonb :status_data

      t.timestamps
    end
  end
end
