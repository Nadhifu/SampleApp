class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :ssn
      t.string :sex
      t.string :telephone

      t.timestamps
    end
  end
end
