class CreateEdiskFiles < ActiveRecord::Migration[6.1]
  def change
    create_table :edisk_files do |t|
      t.string :name
      t.string :file_type
      t.boolean :shared, :default => false
      t.string :path
      t.integer :edisk_size

      t.timestamps
    end
  end
end
