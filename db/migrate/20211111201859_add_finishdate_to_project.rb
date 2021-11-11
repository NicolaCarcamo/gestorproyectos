class AddFinishdateToProject < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :finishdate, :date
  end
end
