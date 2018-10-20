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


def find_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets] do
    if pet[:name] == pet_name
      return pet
    end
  end
  return nil
end

# def remove_pet_by_name(pet_shop, pet_name)
#   for pet in pet_shop[:pets] do
#     if pet[:name] =! pet_name
#     end
#   end
#   p pet
# return nil
# end #weirdly works, but is wrong. You put =! the wrong way around.

# def remove_pet_by_name(pet_shop, pet_name)
#   for pet in pet_shop[:pets] do
#     if pet[:name] == pet_name
#        pet.clear
#     end
#   end
# end

# def remove_pet_by_name(pet_shop, pet_name)
#   for pet in pet_shop[:pets] do
#     if pet[:name] == pet_name
#        pet.
#     end
#   end
# end

def remove_pet_by_name(pet_shop, pet_name)
  x = 0
  for pet in pet_shop[:pets] do
    if pet[:name] == pet_name
      pet_shop[:pets].delete_at(x)
    end
    x += 1
  end
end







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


# def customer_can_afford_pet(customer, pet)
#   for pet in pet[:pets] do
#   if  pet[:price] >= customer[:cash]
#     return pet[:pets]
#
#   return
#
#   end
# end
#
# end
