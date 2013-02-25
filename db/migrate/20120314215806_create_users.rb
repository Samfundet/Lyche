class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :crypted_password
      t.string :password_salt

      # Various tokens
      t.string :persistence_token,   :null => false # Compared to cookie
      t.string :single_access_token, :null => false # API-possibilities
      t.string :perishable_token,    :null => false # For password resets, account confirmation, etc.
      
      t.timestamps
    end
  end
end
