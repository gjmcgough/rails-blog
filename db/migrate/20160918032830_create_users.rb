class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, :email, :password_digest, :password_hash
      t.timestamps null: false
    end
  end
end
