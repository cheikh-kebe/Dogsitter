class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.integer :name
      t.string :race 
      t.belongs_to :city_name    
      t.timestamps
    end
  end
end
