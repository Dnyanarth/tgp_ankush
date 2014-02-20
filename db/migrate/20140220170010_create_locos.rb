class CreateLocos < ActiveRecord::Migration
  def change
    create_table :locos do |t|
      t.integer :crew_id
      t.integer :Locono
      t.string :Base
      t.string :Train
      t.string :Traintype
      t.integer :Load
      t.string :Section
      t.integer :KMS
      t.datetime :Dep
      t.datetime :Arr
      t.integer :Coast
      t.integer :Coasthrs
      t.integer :Hault
      t.integer :HaultHrs
      t.integer :kwhrun
      t.integer :Kwhhalt
      t.integer :Kwhgen
      t.string :Kwhration

      t.timestamps
    end
  end
end
