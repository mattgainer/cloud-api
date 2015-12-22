class ChangePreciptiationToString < ActiveRecord::Migration
  def change
    change_column :clouds, :precipitation, :string
  end
end
