class CreateActsAmoebas < ActiveRecord::Migration
  def change
    create_table :acts_amoebas do |t|
      t.integer :act_id, index: true
      t.integer :amoeba_id, index: true
    end
  end
end
