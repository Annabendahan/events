class AddPricetoEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :sku, :string
  end
end
