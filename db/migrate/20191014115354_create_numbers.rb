class CreateNumbers < ActiveRecord::Migration[6.0]
  def change
    create_table :numbers do |t|
      t.string :number, null: false, length: 15
      t.references :customer
      t.references :plan, null: false
    end
  end
end
