class AddBuildTable < ActiveRecord::Migration
  def up
    create_table "builds", :force => true do |t|
      t.column :version, :string
      t.column :app_id, :integer
      t.timestamps
    end
  end

  def down
    drop_table "builds"
  end
end
