class RemoveVarnameFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :varname, :string
  end
end
