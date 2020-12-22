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
  consolidated = []
  cart.each do | item_in_cart |
    if !consolidated.find{ | any_item | any_item[ :item ] == item_in_cart[ :item ] }
      consolidated << { item: item_in_cart[ :item ], price: item_in_cart[ :price ], count: 1 }
    else
      consolidated[ :count ] += 1
    end
    consolidated
  end
end


  