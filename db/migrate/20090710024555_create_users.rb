class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.column :email, :string, :null => false
      t.column :password, :string, :null => false
      t.column :last_ip_address, :string, :null => false
      t.timestamps
    end
    User.create({:email => "admin@wiki.com", :password => 'admin', :last_ip_address => "192.168.0.91"})
  end

  def self.down
    drop_table :users
  end
end
