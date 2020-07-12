require_relative './part_1_solution.rb'
require 'pry'

def apply_coupons (cart, coupons)
  i = 0
  cart.each do |k|
    coupons.each do |coups|
      
      if k[:item] == coups[:item] && k[:count] == coups[:num]
       cart << {:item =>"#{coups[:item]} W/COUPON" , 
         :price => coups[:cost]/coups[:num], 
         :clearance => k[:clearance],
           :count => coups[:num]}
        k[:count] = k[:count] - coups[:num]
      
  end
end
end
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update consolidate_cart
  cart.each do |k|
    if k[:clearance] == true
      cart = k[:price] - 0.20
binding.pry
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
