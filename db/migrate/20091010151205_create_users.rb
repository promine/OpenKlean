class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.string :username,           :null => false
      t.string :email,              :null => false
      t.string :crypted_password,   :null => false
      t.string :password_salt,      :null => false
      t.string :persistence_token
      t.string :perishable_token
      
      t.integer  :login_count           #Increased every time an explicit login is made. This will *NOT* increase if logging in by a session, cookie, or basic http auth
      t.integer  :failed_login_count    #This increases for each consecutive failed login. See Authlogic::Session::BruteForceProtection and the consecutive_failed_logins_limit config option for more details.
      t.datetime :last_request_at       #Updates every time the user logs in, either by explicitly logging in, or logging in by cookie, session, or http auth
      t.datetime :current_login_at      #Updates with the current time when an explicit login is made.
      t.datetime :last_login_at         #Updates with the value of current_login_at before it is reset.
      t.string   :current_login_ip      #Updates with the request remote_ip when an explicit login is made.
      t.string   :last_login_ip         #Updates with the value of current_login_ip before it is reset.

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
