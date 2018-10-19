def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop,cash)
  return pet_shop[:admin][:total_cash] += cash
  return pet_shop[:admin][:total_cash] -= cash
end

def pets_sold(num_of_pets_sold)
  return num_of_pets_sold[:admin][:pets_sold]
end

def increase_pets_sold(pets_sold, num_of_pets)
  return pets_sold[:admin][:pets_sold] += num_of_pets
end

def stock_count(pet_shop)
  return pet_shop[:pets].count
end

# def pets_by_breed(x,y)
#   x.count
# end

# def pets_by_breed(shop, breed)
#   if shop[:pets][:breed] == breed
#     return breed.count
#   end
# end

# def pets_by_breed(name, breed)
#   for breed in name
#     if [:pets][:breed] == breed
#     return name[:pets][:breed].count
#   end
# end
# end

# def find_pet_by_name(name_of_pet)
#   return
#
#
# end
