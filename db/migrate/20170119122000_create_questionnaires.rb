class CreateQuestionnaires < ActiveRecord::Migration[5.0]
  def change
    create_table :questionnaires do |t|
      t.string :title
      t.text :description
      t.string :url

      t.timestamps
    end
  end
end
