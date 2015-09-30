class CreateTalents < ActiveRecord::Migration
  def change
    create_table :talents do |t|
      t.string :name
      t.integer :amoeba_id, index: true
    end
  end
end
