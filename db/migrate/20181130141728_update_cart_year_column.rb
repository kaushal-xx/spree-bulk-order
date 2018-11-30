class UpdateCartYearColumn < ActiveRecord::Migration[5.2]
  def change
  	change_column :spree_credit_cards, :year, 'integer USING CAST(year AS integer)'
  end
end
