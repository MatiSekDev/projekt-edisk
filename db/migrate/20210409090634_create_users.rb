class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :username
      t.integer :account_size, :default => "1".to_i #account size

      t.timestamps
    end
  end
end
