class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :given_name, null: false
      t.string :family_name, null: false
      t.string :email_address, null: false
      t.string :password_digest, null: false

      t.timestamps
    end
  end
end
