class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :location
      t.date :start_date
      t.date :end_date
      t.integer :user_id
    end
  end
end
