class CreateSciences < ActiveRecord::Migration[5.1]
  def change
    create_table :sciences do |t|
      t.string :Date
      t.float :CCSI
      t.integer :Scientific_Magazines
      t.integer :Scientific_Reports

      t.timestamps
    end
  end
end
