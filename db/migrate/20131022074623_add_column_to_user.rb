class AddColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :qq, :string
    add_column :users, :phone, :string
    add_column :users, :location, :string
    add_column :users, :gender, :string
    add_column :users, :age, :integer
    add_column :users, :job, :string
  end
end
