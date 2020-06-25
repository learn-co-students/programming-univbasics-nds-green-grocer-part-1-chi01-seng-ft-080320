require 'pry'
=begin
def find_item_by_name_in_collection(name, collection)
  collection.each do |k|
    if k[:item] == name
      return k 
    end
  end
  return nil
end
=end

def find_item_by_name_in_collection(name, collection)
  count = 0 
  while count < collection.length
    if collection[count][:item] == name
      return collection[count]
    end
    count += 1 
  end
  nil
end

  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
def consolidate_cart(cart)
  new_cart = []
  count = 0
  while count < cart.length
    new_cart_item = find_item_by_name_in_collection(cart[count][:item], new_cart)
    if new_cart_item != nil
      new_cart_item[:count] += 1
    else
      new_cart_item = {
        :item => cart[count][:item], 
        :price => cart[count][:price],
        :clearance => cart[count][:clearance],
        :count => 1
      }
      new_cart << new_cart_item
    end
    count += 1
  end
  new_cart
end

  