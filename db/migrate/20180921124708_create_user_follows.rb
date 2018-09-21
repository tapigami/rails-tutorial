class CreateUserFollows < ActiveRecord::Migration[5.2]
  def change
    create_table :user_follows do |t|
      t.references :user, foreign_key: true
      t.integer :follower_id, index: true

      t.timestamps
    end
    add_foreign_key :user_follows, :users, column: :follower_id
  end
end
