Feature: Displaying Order
  As a paying customer
  I want an itemized list of all my purchases
  So I can keep track of what I have paid 

  Scenario: 
    Given I am a customer
    When I am ready to pay
    Then I should see a list of the items I ordered