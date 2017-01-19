class CreateConseils < ActiveRecord::Migration[5.0]
  def change
    create_table :conseils do |t|
      t.string :title
      t.string :photo_url
      t.string :description
      t.text :content

      t.timestamps
    end
  end
end
