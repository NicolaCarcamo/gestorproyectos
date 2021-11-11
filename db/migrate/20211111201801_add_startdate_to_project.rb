class AddStartdateToProject < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :startdate, :date
  end
end
