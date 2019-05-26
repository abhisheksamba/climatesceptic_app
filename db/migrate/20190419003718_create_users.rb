class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.integer :recession_id
      t.float :prediction

      t.timestamps
    end
  end
end
