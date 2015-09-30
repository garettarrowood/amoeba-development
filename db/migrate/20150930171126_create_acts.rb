class CreateActs < ActiveRecord::Migration
  def change
    create_table :acts do |t|
      t.string :name
      t.string :picture
      t.timestamps null: false
    end
  end
end
