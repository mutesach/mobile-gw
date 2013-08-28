class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :msg_id
      t.integer :gw_id
      t.integer :user_id
      t.string :origin
      t.string :destination
      t.string :content
      t.string :re_status
      t.string :re_msg_status

      t.timestamps
    end
  end
end
