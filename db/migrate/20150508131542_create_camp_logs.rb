class CreateCampLogs < ActiveRecord::Migration
  def change
    create_table :camp_logs do |t|
      t.string :registration_id
      t.text :log
      t.string :picture
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
