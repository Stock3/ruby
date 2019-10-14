class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.string :name, null: false, length: 15
      t.integer :price, null: false
    end
  end
end
