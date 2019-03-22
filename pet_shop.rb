def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, money)
  pet_shop[:admin][:total_cash] += money
  return pet_shop[:admin][:total_cash]
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, number_sold)
  pet_shop[:admin][:pets_sold] += number_sold
  return pet_shop[:admin][:pets_sold]
end

def stock_count(pet_shop)
  return pet_shop[:pets].length
end

def pets_by_breed(pet_shop, breed)
  pets = []
  for pet_new in pet_shop[:pets]
    if pet_new[:breed] == breed
      pets.push(pet_shop)
    end
  end
  return pets
end


def find_pet_by_name(shop, pet_name)
  for pet_new in shop[:pets]
    if pet_new[:name] == pet_name
      return pet_new
    end
  end
  return nil
end


def remove_pet_by_name(shop, pet_name)
  for pet_new in shop[:pets]
    if pet_new[:name] == pet_name
      shop[:pets].delete(pet_new)
    end
  end
end


def add_pet_to_stock(shop, new_pet)
  shop[:pets].push(@new_pet)
  return shop[:pets].length
end

def customer_cash(customer)
  for customer_money in customer
    return customer[:cash]
  end
end

def remove_customer_cash(customer, cash)
  for cust in customer
    customer[:cash] -= cash
    return customer[:cash]
  end
end

def customer_pet_count(customer)
  for customer_pets in customer
    return customer[:pets].length
  end
end

def add_pet_to_customer(customer, newpet)
  customer[:pets].push(@new_pet)
  return customer[:pets].length
end


def customer_can_afford_pet(customer, pet)
    if customer[:cash] > pet[:price]
      return true
    else
      return false
    end
end
