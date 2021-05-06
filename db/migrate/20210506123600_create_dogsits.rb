class CreateDogsits < ActiveRecord::Migration[5.2]
  def change
    create_table :dogsits do |t|
      t.string :first_name
      t.string :last_name
      t.belongs_to :city_name
      
      t.timestamps
    end
  end
end
