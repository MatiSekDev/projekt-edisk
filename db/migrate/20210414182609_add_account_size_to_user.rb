class AddAccountSizeToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :account_size, :integer
  end
end
