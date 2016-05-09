class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :login_name
      t.string :email
      t.string :famile_name
      t.string :name
      t.integer :sex

      t.timestamps
    end
  end
end
