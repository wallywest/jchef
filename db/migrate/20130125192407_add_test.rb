class AddTest < ActiveRecord::Migration
  def up
    add_column :web_users, :test, :string
  end

  def down
    remove_column :web_users, :test
  end
end
