def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, cash)
  return pet_shop[:admin][:total_cash] += cash
end # how do I make it remove cash then? Condition if statement?

def pets_sold(num_of_pets_sold)
  return num_of_pets_sold[:admin][:pets_sold]
end

def increase_pets_sold(pets_shop, num_pets)
  return pets_shop[:admin][:pets_sold] += num_pets
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
  return
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

#for loop is looking arthur, once we find arthur I want to know where abouts in the array he is. So that I can use that point in the array to tell the method to delete him. So that the way I find where he is in the array is each time we go through the for loop, I incriment this variable that i created x, I've initialised it to 0 before the thing starts, and I increment it at the end of the for loop, that means the first time it goes through the for loop x is going to be 0, and that's going to tbe the first element in the array. and the next time it's going to be 1 and so on.

#so at the pass through the for loop when it finds arthur, and it's checking for arthur with the if statement, it'll do this delete statement. It's going to know where he is in the array, (what index to use) by using the x that we've been to using to track where we are. 








def add_pet_to_stock(pet_shop, pet)
  pet_shop[:pets] << pet
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, amount_to_remove)
  return customer[:cash] -= amount_to_remove
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, pet)
  customer[:pets] << pet
end

#OPTIONAL
#should return true or false
def customer_can_afford_pet(customer, pet)
  customer[:cash] >= pet[:price]
end

def sell_pet_to_customer(pet_shop, pet, customer)

if pet == nil
  return
end

if customer_can_afford_pet(customer, pet)

  add_pet_to_customer(customer, pet)
  increase_pets_sold(pet_shop, 1)
  remove_customer_cash(customer, pet[:price])
  add_or_remove_cash(pet_shop, pet[:price])
end

end
