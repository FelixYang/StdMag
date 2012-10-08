class CreateStdPaths < ActiveRecord::Migration
  def change
    create_table :std_paths do |t|
      t.string :std_id
      t.string :std_path
      t.references :std_info

      t.timestamps
    end
    add_index :std_paths, :std_info_id
  end
end
