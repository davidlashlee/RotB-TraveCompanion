class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :location
      t.datetime :start_date
      t.datetime :end_date
      t.integer :user_id
    end
  end
end
