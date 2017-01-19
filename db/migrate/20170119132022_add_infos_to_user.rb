class AddInfosToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :photo_url, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :birthday, :date
    add_column :users, :sexe, :string
    add_column :users, :telephone, :string
  end
end
