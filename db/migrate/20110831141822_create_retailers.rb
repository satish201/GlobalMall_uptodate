class CreateRetailers < ActiveRecord::Migration
  def self.up
    create_table :retailers do |t|
      t.string :username, :null => false
      t.string :email, :null => false
# Required
      t.string :persistence_token, :null => false
# Optional
      t.string :crypted_password, :null => false
      t.string :password_salt, :null => false
      t.string :single_access_token, :null => false
      t.string :perishable_token, :null => false
      t.integer :login_count, :null => false, :default => 0
      t.integer :failed_login_count, :null => false, :default => 0
      t.datetime :last_request_at
      t.datetime :current_login_at
      t.datetime :last_login_at
      t.string :current_login_ip
      t.string :last_login_ip

      t.timestamps
    end
  end

  def self.down
    drop_table :retailers do |t|
      t.string :username, :null => false
      t.string :email, :null => false
# Required
      t.string :persistence_token, :null => false
# Optional
      t.string :crypted_password, :null => false
      t.string :password_salt, :null => false
      t.string :single_access_token, :null => false
      t.string :perishable_token, :null => false
      t.integer :login_count, :null => false, :default => 0
      t.integer :failed_login_count, :null => false, :default => 0
      t.datetime :last_request_at
      t.datetime :current_login_at
      t.datetime :last_login_at
      t.string :current_login_ip
      t.string :last_login_ip
    end
  end
end
