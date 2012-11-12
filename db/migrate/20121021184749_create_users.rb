class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table "web_users", :force => true do |t|
      t.column :login,                      :string, :default => ""
      t.column :first_name,                 :string, :default => ""
      t.column :last_name,                  :string, :default => ""
      t.column :email,                      :string, :default => ""
      t.column :crypted_password,           :string, :limit => 40
      t.column :salt,                       :string, :limit => 40
      t.column :remember_token,             :string
      t.column :remember_token_expires_at,  :datetime
    end
  end

  def self.down
    drop_table "web_users"
  end
end  
