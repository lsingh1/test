require 'capybara/cucumber'
require 'capybara/rspec'
#require 'capybara/rails'

Capybara.run_server = false
Capybara.default_driver = :selenium
#Capybara.app_host = 'http://owdev.officeworks.internal/'
#Capybara.app_host = 'http://owdev.officeworks.internal/'
Capybara.app_host = 'http://ofwtest.officeworks.com.au/'
#Capybara.app_host = 'http://172.16.131.68/'
Capybara.default_wait_time = 30


# We need this to fix the random timeout error that we were seeing in CI.
# May be related to: http://code.google.com/p/selenium/issues/detail?id=1439
 
Capybara.register_driver :selenium_with_long_timeout do |app|
  client = Selenium::WebDriver::Remote::Http::Default.new
  client.timeout = 120
  Capybara::Selenium::Driver.new(app, :browser => :chrome)  
Capybara::Driver::Selenium.new(app, :browser => :chrome, :http_client => client)
end
 
Capybara.javascript_driver = :selenium_with_long_timeout

#Capybara.register_driver :selenium_with_long_timeout do |app|
#  client = Selenium::WebDriver::Remote::Http::Default.new
#  client.timeout = 120
#  #profile.native_events = true
#  Capybara::Driver::Selenium.new(app, :browser => :Chrome, :http_client => client)
#end
 
#Capybara.javascript_driver = :selenium_with_long_timeout

#Capybara.register_driver :selenium do |app|
#Capybara::Selenium::Driver.new(app, :browser => :chrome)  
#end

#Capybara.javascript_driver = :selenium_with_long_timeout