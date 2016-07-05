class AddTokenToDelivery < ActiveRecord::Migration
  def change
    add_column :deliveries, :token, :string
  end
end
