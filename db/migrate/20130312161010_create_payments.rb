class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :ssn
      t.integer :checkref
      t.integer :checkno
      t.decimal :payamt

      t.timestamps
    end
  end
end
