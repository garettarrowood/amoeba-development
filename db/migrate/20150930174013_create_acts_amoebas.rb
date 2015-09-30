class CreateActsAmoebas < ActiveRecord::Migration
  def change
    create_table :acts_amoebas do |t|
      t.integer :act_id
      t.integer :ameoba_id
    end
  end
end
