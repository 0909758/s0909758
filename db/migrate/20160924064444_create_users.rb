class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.text :bio
      t.string :profile_image
      t.string :email
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
