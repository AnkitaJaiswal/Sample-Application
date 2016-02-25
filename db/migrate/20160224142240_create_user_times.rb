class CreateUserTimes < ActiveRecord::Migration
  def change
    create_table :user_times do |t|
      t.datetime :current_time

      t.timestamps null: false  
    end
  end
end
