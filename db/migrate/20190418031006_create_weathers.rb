class CreateWeathers < ActiveRecord::Migration[5.1]
  def change
    create_table :weathers do |t|
      t.string :Date
      t.float :CCSI
      t.float :CEI
      t.float :Warm_Areas
      t.float :Cold_Areas
      t.float :DSCI

      t.timestamps
    end
  end
end
