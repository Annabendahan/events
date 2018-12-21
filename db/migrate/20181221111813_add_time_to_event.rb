class AddTimeToEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :starting_time, :time
  end
end
