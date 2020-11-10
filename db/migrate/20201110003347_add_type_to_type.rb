class AddTypeToType < ActiveRecord::Migration[6.0]
  def up
    execute <<-SQL
      CREATE TYPE catalog_types AS ENUM ('company', 'service', 'app');
    SQL
    add_column :types, :type, :catalog_types
    add_index :types, :type
  end

  def down
    remove_index :types, :type
    drop_column :types, :type, :catalog_types
    execute <<-SQL
      DROP TYPE catalog_types;
    SQL
  end
end
