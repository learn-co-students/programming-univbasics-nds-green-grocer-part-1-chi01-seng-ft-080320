 require 'pry'
 grocery_shelf =[
    { :item => "CANNED BEANS", :price => 3.00, :clearance => true},
    { :item => "CANNED CORN", :price => 2.50, :clearance => false},
    { :item => "SALSA", :price => 1.50, :clearance => false},
    { :item => "TORTILLAS", :price => 2.00, :clearance => false},
    { :item => "HOT SAUCE", :price => 1.75, :clearance => false}]

def find_item_by_name_in_collection(name, collection)
  counter = 0
  while counter < collection.length 
    if collection[counter][:item] == name
      return collection[counter]
    end
    counter += 1 
  end 
end 

def consolidate_cart(cart)
item_array = []
  cart.each do |item|
    target_item = find_item_by_name_in_collection(item[:item], item_array)
     if target_item
       target_item[:count] += 1 
     else
       item[:count] = 1
       item_array << item 
  end 
end 
return item_array
      
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.

end


  