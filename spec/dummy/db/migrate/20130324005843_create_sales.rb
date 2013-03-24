class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.references :car
      t.string :customer_name
      t.string :customer_city
      t.string :color
      t.decimal :charge_price

      t.timestamps
    end
  end
end
