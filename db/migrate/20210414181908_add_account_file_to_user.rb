class AddAccountFileToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :account_file, :integer
  end
end
