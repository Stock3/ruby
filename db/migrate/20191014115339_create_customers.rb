class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name, null: false, length: 20
      t.string :surname, null: false, length: 30
      t.references :city
    end
  end
end
