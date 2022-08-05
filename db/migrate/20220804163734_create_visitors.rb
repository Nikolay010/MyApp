class CreateVisitors < ActiveRecord::Migration[7.0]
  def change
    create_table :visitors do |t|
      t.string :email
      t.string :password
      t.string :password_confirmation

      t.timestamps
    end
  end
end
