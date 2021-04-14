class ChangeDefaultAccountSize < ActiveRecord::Migration[6.1]
  def change
    change_column_default :users, :account_size, 0
  end
end
