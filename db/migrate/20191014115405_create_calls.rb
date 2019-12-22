class CreateCalls < ActiveRecord::Migration[6.0]
  def change
    create_table :calls do |t|
      t.integer :call_length
      t.datetime :time, default: -> { 'CURRENT_TIMESTAMP' }
      t.references :source_number, null: false
      t.references :target_number, null: false
    end
  end
end
