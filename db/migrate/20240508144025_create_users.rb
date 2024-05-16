class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :lastname
      t.string :firstname
      t.string :user_level, default: "student" # Default user level is student
      t.string :username
      t.string :password_digest # Using password_digest for secure password storage

      t.timestamps
    end
  end
end
