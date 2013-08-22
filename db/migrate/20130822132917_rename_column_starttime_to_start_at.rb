class RenameColumnStarttimeToStartAt < ActiveRecord::Migration
  def up
    rename_column :servconfs, :starttime, :start_at
    rename_column :servconfs, :endtime, :end_at
    rename_column :conferences, :starttime, :start_at
    rename_column :conferences, :endtime, :end_at
  end

  def down
    rename_column :servconfs, :start_at, :starttime
    rename_column :servconfs, :end_at, :endtime
    rename_column :conferences, :start_at, :starttime
    rename_column :conferences, :end_at, :endtime
  end
end
