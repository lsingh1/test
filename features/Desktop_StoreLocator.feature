@StoreLocator
Feature: Store Locator

Scenario: Test Store Locator Page Loads
  Given I visit the Officeworks Home Page
  And I click on the 'Store Locator' Link
  And I should see Store Locator Page
  And I search for Cranbourne
  Then I should see the Cranbourne Store as the result  



  