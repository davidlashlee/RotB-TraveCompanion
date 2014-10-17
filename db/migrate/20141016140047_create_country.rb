class CreateCountry < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.string :symbol
      t.string :pic
    end
  end
end
