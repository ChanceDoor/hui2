class CreateConferences < ActiveRecord::Migration
  def change
    create_table :conferences do |t|
      t.string :title
      t.timestamp :starttime
      t.timestamp :endtime
      t.string :location
      t.text :body
      t.integer :level
      t.references :user

      t.timestamps
    end
    add_index :conferences, :user_id
  end
end
