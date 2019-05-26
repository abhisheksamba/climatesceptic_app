class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :recession_id
      t.string :integer
      t.string :varname
      t.string :string
      t.float :prediction

      t.timestamps
    end
  end
end
