class CreatePaymentTable < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.date :payment_date,    null: false
      t.integer :total_payment,  null: false
      
      t.timestamps null: false
    end
  end
end
