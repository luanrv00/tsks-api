class AddSyncToTsks < ActiveRecord::Migration[7.0]
  def change
    add_column :tsks, :sync, :integer
  end
end
