Given(/^I visit the homepage$/) do
  visit 'webapp/wcs/stores/servlet/officeworks'
end

When(/^I enter the login details$/) do
  within(".form-login") do
	fill_in 'logonId', :with => 'automated@tester.com'
	fill_in 'logonPassword', :with => 'test1234'
  end

  click_on 'Log in'
end


Then(/^I should be logged into the site$/) do
 find('.welcome-message').should have_content('welcome back')
end

