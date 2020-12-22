def find_item_by_name_in_collection(name, collection)
  collection.find{ | collected | collected[ :item ] == name  }
end

def consolidate_cart(cart)
  consolidated_cart = []
  cart.each do | item_in_cart |
    find_item = find_item_by_name_in_collection( item_in_cart[ :item ], consolidated_cart )
    if !find_item
      duplicate_item = item_in_cart
      duplicate_item[ :count ] = 1
      consolidated_cart << duplicate_item
    else
      find_item[ :count ] += 1
    end
  end
  consolidated_cart
end


  