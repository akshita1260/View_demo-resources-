class AddNameToBook < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :name, :string
    add_column :books, :book_no, :string
  end
end
