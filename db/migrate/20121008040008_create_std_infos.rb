class CreateStdInfos < ActiveRecord::Migration
  def change
    create_table :std_infos do |t|
      t.string :std_id
      t.string :std_release_time
      t.string :std_org
      t.text :std_name_cn, :row => 4
      t.text :std_name_en, :row => 4
      t.string :std_language
      t.string :std_tag1
      t.string :std_tag2

      t.timestamps
    end
  end
end
