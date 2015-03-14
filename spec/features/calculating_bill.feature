Feature: Calculating Bill
  As a paying customer
  I want the receipt to have the total that I owe clearly listed
  So I know how much I need to pay

  Scenario: 
    Given I am a customer
    When I am ready to pay
    Then I should see the total money I owe on my bill