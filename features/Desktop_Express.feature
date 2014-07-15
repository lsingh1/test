@ExpressCheckout
Feature: Checkout as an Express Customer

Scenario: Proceed to checkout and past Express Checkout Form
Given I visit the homepage
And I proceed to checkout
And I click on + Add product codes from catalogue
And enter VB16GMICGN in the text field
And click on Add To Cart button
And I click Continue on Cart page
And I enter in my Express details
And I select Use Address Entered in QAS
And I select Continue on the Login page
And I select Continue on Delivery page
And Select Credit Card and enter all CC details
Then I should be taken to the Thank You Page