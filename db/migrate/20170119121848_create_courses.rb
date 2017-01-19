class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :place
      t.time :start_hour
      t.time :end_hour
      t.date :day
      t.text :description

      t.timestamps
    end
  end
end
