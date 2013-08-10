class AddFigureToServconfs < ActiveRecord::Migration
  def change
    add_column :servconfs, :figure, :string
  end
end
