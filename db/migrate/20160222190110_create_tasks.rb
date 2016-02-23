class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.date :start_date 
      t.date :end_date 
      t.integer :planned_hours 
      t.string :status
      t.integer :employee_id
      t.timestamps null: false
      t.timestamps null: false
    end
  end
end
