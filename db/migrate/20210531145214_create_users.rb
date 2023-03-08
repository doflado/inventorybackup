class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|

      t.timestamps
      t.string :email
      t.string :password_digest
      t.string :region
      t.string :position
      t.string :role
    end
  end
end
