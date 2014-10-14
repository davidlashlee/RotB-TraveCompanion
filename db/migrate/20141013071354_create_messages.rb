class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|

      t.integer :reciever
      t.integer :sender
      t.string :title
      t.string :message_text

      t.timestamps
    end
  end
end
