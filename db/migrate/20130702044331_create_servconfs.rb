class CreateServconfs < ActiveRecord::Migration
  def change
    create_table :servconfs do |t|
      t.string :title
      t.timestamp :starttime
      t.timestamp :endtime
      t.string :location
      t.text :body

      t.timestamps
    end
  end
end
