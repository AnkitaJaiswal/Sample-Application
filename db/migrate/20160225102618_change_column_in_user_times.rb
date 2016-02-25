class ChangeColumnInUserTimes < ActiveRecord::Migration
  def change
    change_column :user_times, :current_time, :string
  end
end
