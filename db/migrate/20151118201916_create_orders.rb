class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.decimal :subtota, precision: 12, scale: 3
      t.decimal :tax, precision: 12, scale: 3
      t.decimal :shippin, precision: 12, scale: 3
      t.decimal :total, precision: 12, scale: 3
      t.references :order_status, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
