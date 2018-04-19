class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :name
      t.datetime :date

      t.timestamps null: false
    end
  end
end
