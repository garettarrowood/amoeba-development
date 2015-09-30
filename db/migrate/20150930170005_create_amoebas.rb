class CreateAmoebas < ActiveRecord::Migration
  def change
    create_table :amoebas do |t|

      t.timestamps null: false
    end
  end
end
