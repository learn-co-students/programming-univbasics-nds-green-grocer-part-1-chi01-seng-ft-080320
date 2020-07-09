def find_item_by_name_in_collection(name, collection)
  item = nil
 collection.each do |key, info|
 if key[:item] == name
   item = key
 end
 end
 item
end

def consolidate_cart(cart)
  new_cart = {}
  cart.each do |hash|
    hash.each do |key, info|
      if new_cart[key]
        new_cart[key][:count] += 1 
      else
        new_cart[key] = info 
        new_cart[key][:count] = 1
      end
    end
  end
  new_cart
end