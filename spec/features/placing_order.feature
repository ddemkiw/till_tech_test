Feature: placing an Order
  As a customer
  I want to order items from the menu
  So I that I can pay for those items and consume them

  Scenario: Ordering
    Given I am customer
    When I order a coffee
    Then I should the item coffee and it's price on my receipt

    customer = Customer.new
    order = Order.new(customer)
    order.add(coffee)
    receipt = receipt.new(order)

