class CreateCoachings < ActiveRecord::Migration[5.0]
  def change
    create_table :coachings do |t|
      t.references :user, foreign_key: true
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
