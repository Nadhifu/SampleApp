class CreatePayment2s < ActiveRecord::Migration
  def change
    create_table :payment2s do |t|
      t.integer :ssn
      t.integer :checkref
      t.integer :checkno
      t.decimal :pmtamt

      t.timestamps
    end
  end
end
