class AddAnsweredToQuestionnaire < ActiveRecord::Migration[5.0]
  def change
    add_column :questionnaires, :answered, :boolean, default: false
  end
end
