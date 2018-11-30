class CreateJoinTableStoreProduct < ActiveRecord::Migration[5.2]
  def up
    create_table :spree_products_stores, id: false do |t|
      t.references :product
      t.references :store
    end
  end

  def down
    drop_table :spree_products_stores 
  end
end
