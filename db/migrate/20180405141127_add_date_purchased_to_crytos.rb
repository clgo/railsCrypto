class AddDatePurchasedToCrytos < ActiveRecord::Migration
  def change
    add_column :cryptos, :date_purchased, :date
  end
end
