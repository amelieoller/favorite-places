class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :name
      t.string :city
      t.string :user_id
      t.string :country_id
      t.string :image_url
    end
  end
end
