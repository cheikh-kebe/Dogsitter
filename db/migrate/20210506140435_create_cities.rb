class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :city_name
      t.belongs_to :dogsit
      t.belongs_to :dog
      t.timestamps
    end
  end
end
