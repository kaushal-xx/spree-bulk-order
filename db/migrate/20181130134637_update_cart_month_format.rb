class UpdateCartMonthFormat < ActiveRecord::Migration[5.2]
  def change
  	change_column :spree_credit_cards, :month, 'integer USING CAST(month AS integer)'
  end
end
