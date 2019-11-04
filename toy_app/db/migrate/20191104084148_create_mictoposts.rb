class CreateMictoposts < ActiveRecord::Migration[5.1]
  def change
    create_table :mictoposts do |t|
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
