class Item < ApplicationRecord
  belongs_to  :user
  belongs_to  :category
  belongs_to  :state
  belongs_to  :shopping_charge
  belongs_to  :prefecture
  belongs_to  :delivery_time
end
