class AddStdPathToStdInfo < ActiveRecord::Migration
  def change
    add_column :std_infos, :std_path, :string
  end
end
