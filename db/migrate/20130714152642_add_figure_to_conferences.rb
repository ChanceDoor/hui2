class AddFigureToConferences < ActiveRecord::Migration
  def change
    add_column :conferences, :figure, :string
  end
end
