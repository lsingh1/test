Given(/^I proceed to checkout$/) do
  find('#shopping-cart').click
end

Given(/^I click on \+ Add product codes from catalogue$/) do
  find('.add-from-catalogue').click
end

Given(/^enter VB(\d+)GMICGN in the text field$/) do |arg1|
  within('#addFromCatalogueModal')do
  fill_in 'partNumber_1', :with => 'VB16GMICGN'

end
end

Given(/^click on Add To Cart button$/) do
  within('.order_button') do
  find('.btn-commerce').click
end
end

Given(/^I click Continue on Cart page$/) do
within('.buttons')do
  find('.pull-right').click
end
end

Given(/^I enter in my Express details$/) do
  	within(".express-checkout") do
		#find(:select, 'optionBusiness').first(:option, '.address1_businessFalse').select_option
		page.choose('address1_businessFalse')
		find(:select, 'personTitle').first(:option, 'Mr.').select_option
		fill_in 'firstName', :with => 'Lavin'
		fill_in 'lastName', :with => 'Singh'
		fill_in 'address1_emailAddress', :with => page.evaluate_script("'LavTest' + Math.floor((Math.random()*10000)+1) + '@tester.com'")
		fill_in 'phone1', :with => '99999999'
		fill_in 'mobilePhone1', :with => '0499999999'
 		fill_in 'address2', :with => ''
		fill_in 'address1', :with => '1 Seattle Square'
		fill_in 'zipCode', :with => '3805'
		#fill_in 'city', :with => 'Cranbourne North'
		find(:select, 'city').first(:option, 'NARRE WARREN').select_option
		#find(:select, 'state').first(:option, 'VIC').select_option
		#fill_in 'zipCode', :with => '3977'
	end
	  #within("#expressContinueCheckoutButton")do
    #  find('#expressContinueCheckoutButton').click
	
	click_link'Continue Checkout'
end

Given(/^I select Use Address Entered in QAS$/) do
  within('#addressCheck') do
  find('#useOriginalAddress').click
end
end

Given(/^I select Continue on the Login page$/) do
 # within('#expressContinueCheckoutButton')do
    find('#expressContinueCheckoutButton').click
#end
end


Given(/^I select Continue on Delivery page$/) do
	within('#deliveryPageContainer')do
	find('#continueToPaymentButton').click
	  
  # sleep (10)
end
end



Given(/^Select Credit Card and enter all CC details$/) do
  sleep (10)
  #within("#mainForm") do
  #fill_in 'cc', :with => '36053200001508'
  #fill_in 'ccname', :with => 'Test'
  #find(:select, 'expm').first(:option, '01').select_option
  #find(:select, 'expy').first(:option, '2017').select_option
  #fill_in 'cvv', :with => '123'
#end
end


Then(/^I should be taken to the Thank You Page$/) do
  #pending # express the regexp above with the code you wish you had
end

