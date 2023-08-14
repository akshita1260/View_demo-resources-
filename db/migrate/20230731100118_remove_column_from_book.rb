class RemoveColumnFromBook < ActiveRecord::Migration[7.0]
  def change
    remove_column :books, :index, :string
  end
end
