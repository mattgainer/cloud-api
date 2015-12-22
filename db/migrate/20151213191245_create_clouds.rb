class CreateClouds < ActiveRecord::Migration
  def change
    create_table :clouds do |t|
      t.string :type
      t.integer :min_altitude
      t.integer :max_altitude
      t.string :units
      t.string :composition
      t.boolean :precipitation

      t.timestamps null: true
    end
  end
end
