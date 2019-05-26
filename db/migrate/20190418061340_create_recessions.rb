class CreateRecessions < ActiveRecord::Migration[5.1]
  def change
    create_table :recessions do |t|
      t.string :Date
      t.float :CCSI
      t.float :Unemployment
      t.float :GDPGrowth
      t.float :Oil_Price
      t.float :IPI
      t.integer :Recession_Dates
      t.float :Nonfarm_Payrolls

      t.timestamps
    end
  end
end
