class CreateGmusers < ActiveRecord::Migration
  def self.up
    create_table :gmusers do |t|
       t.string :username
      t.string :email
      t.string :crypted_password
      t.string :password_salt
      t.string :persistence_token

      t.timestamps
    end
  end

  def self.down
    drop_table :gmusers
    
  end
end
