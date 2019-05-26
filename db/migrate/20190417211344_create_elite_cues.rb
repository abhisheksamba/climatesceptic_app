class CreateEliteCues < ActiveRecord::Migration[5.1]
  def change
    create_table :elite_cues do |t|
      t.string :Date
      t.float :CCSI
      t.integer :Democrat_Statements
      t.integer :Republican_Statements
      t.integer :House_Hearings
      t.integer :Senate_Hearings
      t.float :LCV_Dem
      t.float :LCV_Rep

      t.timestamps
    end
  end
end
