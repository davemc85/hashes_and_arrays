def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, money)
  shop[:admin][:total_cash] += money
end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, number_sold)
  shop[:admin][:pets_sold] += number_sold
end

def stock_count(shop)
  return shop[:pets].length
end

def pets_by_breed(shop, breed)
  pets = []
  for pet_new in shop[:pets]
    if pet_new[:breed] == breed
      pets.push(shop)
    end
  end
  return pets
end


def find_pet_by_name(shop, name)
  for pet_new in shop[:pets]
    if pet_new[:name] == name
      return pet_new
    end
  end
  return nil
end


def remove_pet_by_name(shop, pet_name)
  pet = find_pet_by_name(shop, pet_name)
  shop[:pets].delete(pet)
end


def add_pet_to_stock(shop, new_pet)
  shop[:pets].push(new_pet)
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, cash)
  customer[:cash] -= cash
end

def customer_pet_count(customer)
  return customer[:pets].length
end

def add_pet_to_customer(customer, pet)
  customer[:pets].push(pet)
end


def customer_can_afford_pet(customer, pet)
    return customer[:cash] > pet[:price]
end




def sell_pet_to_customer(shop, pet, customer)
  find_pet_by_name(shop, name)
      if customer_can_afford_pet(customer, pet)

        customer[:pets].push(pets)
        # customer[:pets].insert(pet)
        # customer[:pets] << pets.slice!

        increase_pets_sold(shop, 1)
        remove_customer_cash(customer, pets[:price])
        add_or_remove_cash(shop, pets[:price])
      end
    return nil
  return customer[:pets].length
end



def sell_pet_to_customer(shop, pet, customer)
  for pet in shop[:pets]
    if pet[:name] == pet
      if customer[:cash] > pet[:price]
        customer[:pets].push(pet)
        increase_pets_sold(shop, 1)
        remove_customer_cash(customer, pets[:price])
        add_or_remove_cash(shop, pets[:price])
      end
    end
  end
    return shop[:admin][:pets_sold]
end

def sell_pet_to_customer(shop, pet, customer)
  if pet != nil
    if customer_can_afford_pet(customer, pet)
      add_pet_to_customer(customer, pet)
      increase_pets_sold(shop, 1)
      remove_customer_cash(customer, pet[:price])
      add_or_remove_cash(shop, pet[:price])
    end
  end
end

def sell_pet_to_customer(shop, pet, customer)
  if pet != nil && customer_can_afford_pet(customer, pet)
    add_pet_to_customer(customer, pet)
    increase_pets_sold(shop, 1)
    remove_customer_cash(customer, pet[:price])
    add_or_remove_cash(shop, pet[:price])
  end
end
