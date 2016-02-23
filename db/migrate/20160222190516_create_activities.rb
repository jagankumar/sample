class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
     t.string :duration
     t.date :date
     t.text :description 
     t.integer :employee_id
     t.integer :task_id
     t.timestamps null: false
     t.timestamps null: false
    end
  end
end
