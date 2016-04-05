@demo
Feature: Dominos Homepage

  Scenario: Verify search input field appears
    Given I am on the dominos homepage
    When I continue to delivery
    Then all entrees are available for order
