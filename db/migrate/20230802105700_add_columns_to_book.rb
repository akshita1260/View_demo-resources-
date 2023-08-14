class AddColumnsToBook < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :date, :datetime
  end
end
