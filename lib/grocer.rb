def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.find{ | collected | collected[ :item ] == name  }
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  consolidated_cart = []
  cart.each do | item_in_cart |
    find_item = consolidated_cart.find{ | each | each[ :item ] == item_in_cart[ :item ] }
    if !find_item
      consolidated_cart << { item: item_in_cart[ :item ], price: item_in_cart[ :price ], clearance: item_in_cart[ :clearance ], count: 1 }
    else
      find_item[ :count ] += 1
    end
    binding.pry
  end
  consolidated_cart
end


  