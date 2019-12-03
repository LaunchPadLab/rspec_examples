class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :total
      t.integer :taxes
      t.integer :shipping
      t.integer :subtotal
      t.string :coupon_code

      t.timestamps
    end
  end
end
