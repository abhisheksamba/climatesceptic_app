class CreateMedia < ActiveRecord::Migration[5.1]
  def change
    create_table :media do |t|
      t.string :Date
      t.float :CCSI
      t.integer :Media_Index
      t.integer :Environmental_Magazines
      t.integer :Conservative_Magazines

      t.timestamps
    end
  end
end
