class RemoveAccoungFileFromUser < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :account_file, :integer
  end
end
