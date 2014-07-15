Given(/^I visit the Officeworks Home Page$/) do
  visit 'webapp/wcs/stores/servlet/officeworks'
end

When(/^I click on the 'Store Locator' Link$/) do
  within("li.store-locator-icon") do
     click_link 'Store Locator'
  end
end

Then(/^I should see Store Locator Page$/) do
  page.has_content?('Officeworks Store Locator')
end

Given(/^I am on the Store Locator Page$/) do
  visit 'webapp/wcs/stores/servlet/AjaxStoreLocatorDisplayView?catalogId=1000&langId=-1&storeId=10151'
end

When(/^I search for Cranbourne$/) do
  fill_in 'storeinput', :with => 'Cranbourne'
  click_button 'tests'
end

Then(/^I should see the Cranbourne Store as the result$/) do
  page.has_content?('Cranbourne Officeworks')
end



