class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :location
      t.string :start_date
      t.string :end_date
      t.integer :user_id
    end
  end
end
