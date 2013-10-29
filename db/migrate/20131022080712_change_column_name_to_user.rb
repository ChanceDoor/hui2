class ChangeColumnNameToUser < ActiveRecord::Migration
  def up
    change_column :users, :name, :string, :null => false, :unique => true
  end

  def down
    change_column :users, :name, :string
  end
end
