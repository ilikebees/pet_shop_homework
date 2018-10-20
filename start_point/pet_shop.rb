def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, cash)
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

# def pets_by_breed(pet_shop, breed)
#   #puts pet_shop[:pets][0][:breed]
#   puts pet_shop[:pets].select { |x| x[:breed] == breed}
# end

def pets_by_breed(pet_shop, breed)
  array = []
  for pet in pet_shop[:pets] do
    if pet[:breed] == breed
    array << pet[:breed]
  end
end
return array
end



# def pets_by_breed(pet_shop, breed)
#   total = []
#   for pet in pet_shop[:pets]
#     p pet[:breed]
#
#
#   end
# end
#
# end

# def pets_by_breed(pet_shop, breed_of_pet)
#   for x in x[:breed]
#     return pet_shop[:pets] if x[:breed] == breed_of_pet
# end
# end
# def all_pets_by_breed(breed, pet)
#   total = []
#   for breed in pet[:breed]
#     return breed.count
#   end
# end

# def pets_by_breed(breed_of_pet)
#   return pet_shop[:pets][0][:breed]
#   return pet_shop[:pets][0][:breed].count
# end

# def find_pet_by_name(name, pet)
#   for name in pet[:name]
#     return name
#   end
# end

# def find_pet_by_name(pet_shop, pet_name)
#   return pet_shop[:pets][0][:name]
# end

# def find_pet_by_name(pet_shop, pet_name)
#   return pet_shop[:name]
# end

# def remove_pet_by_name(pet_shop, pet_name)
#   pet_shop[:name].delete(pet_name)
# end

# def find_pet_by_name(pet_name)
#   return pet_shop[:pets][:name]
# end

# def pets_by_breed(pet_shop, breed)
#   return pet_shop[:pets][:breed].count
# end

# def pets_by_breed(pet_shop, breed_of_pet)
#   for pet in pet_shop
#     if (pet_shop[:breed] == breed_of_pet)
#       return breed_of_pet.to_i.count
#     end
#   end
# end

# def pets_by_breed(x, y)
#
# end

# def pets_by_breed(pet_shop, breed_of_pet)
#   total_breeds = 0
#   for pet in pet_shop
#     breed_of_pet += pet_shop[:breed]
#   end
#   return total_breeds
# end

# def remove_pet_by_name(pet_shop, pet_name)
#   pet_shop[:pets][:name].delete(pet_name)
# end



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
# def find_pet_by_name(pet_shop, pet_name)
#   for pet in pet_shop[:pets][0][:name]
#     return pet if pet_shop[:pets][0][:name] == pet_name
#   end
# end
# end

# def find_pet_by_name(pet_shop, pets_name)
#   return pet_shop[:pets]
# end


# def find_pet_by_name(pet_shop, pet_name)
#   for pet in pet_shop
#   if pet_shop[:name] == pet_name
#     return pet_shop[:name]
#   end
# end
# end

# def find_pet_by_name(pet_shop, pet_name)
#   for pet in pet_shop[:pets]
#   if pet_shop[:pets][:name] == pet_name
#     return pet_shop[:pets][:name]
#   end
# end
# end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
end

def customer_cash(customer_name)
  return customer_name[:cash]
end

def remove_customer_cash(customer_name, amount_to_remove)
  return customer_name[:cash] -= amount_to_remove
end

def customer_pet_count(customer_name)
  return customer_name[:pets].count
end

def add_pet_to_customer(customer_name, new_pet)
  customer_name[:pets] << new_pet
end

#OPTIONAL

# def customer_can_afford_pet(customer, pet_to_buy)
#
# end
