def find_item_by_name_in_collection(name, collection)
  collection.find{ | collected | collected[ :item ] == name  }
end

def consolidate_cart(cart)
  consolidated_cart = []
  cart.each do | item_in_cart |
    find_item = find_item_by_name_in_collection( item_in_cart[ :item ], consolidated_cart )
    if !find_item
      consolidated_cart << { item: item_in_cart[ :item ], price: item_in_cart[ :price ], clearance: item_in_cart[ :clearance ], count: 1 }
    else
      find_item[ :count ] += 1
    end
    # binding.pry
  end
  consolidated_cart
end


  