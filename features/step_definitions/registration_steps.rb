Given(/^I am on Home Page$/) do
  @driver.navigate.to('http://demo.redmine.org')
end

When(/^I click Register button$/) do
  @driver.find_element(:class, 'register').click
end

And(/^I fill registration form$/) do
  @page = Registration.new
  @page.generate_username
  @driver.find_element(:id, 'user_login').send_keys @page.username
  @driver.find_element(:id, 'user_password').send_keys '1234'
  @driver.find_element(:id, 'user_password_confirmation').send_keys '1234'
  @driver.find_element(:id, 'user_firstname').send_keys 'Tester'
  @driver.find_element(:id, 'user_lastname').send_keys 'Test'
  @page.generate_email
  @driver.find_element(:id, 'user_mail').send_keys @page.email
end

And(/^I click submit button$/) do
  @driver.find_element(:name, 'commit').click
end

Then(/^I am registered$/) do
  expect(@driver.find_element(:id, 'flash_notice').displayed?).to be_truthy
end

Given(/^new user registered$/) do
  @page = Registration.new
  @driver.navigate.to('http://demo.redmine.org')
  @driver.find_element(:class, 'register').click
  @page.generate_username
  @driver.find_element(:id, 'user_login').send_keys @page.username
  @driver.find_element(:id, 'user_password').send_keys '1234'
  @driver.find_element(:id, 'user_password_confirmation').send_keys '1234'
  @driver.find_element(:id, 'user_firstname').send_keys 'Tester'
  @driver.find_element(:id, 'user_lastname').send_keys 'Test'
  @page.generate_email
  @driver.find_element(:id, 'user_mail').send_keys @page.email
  @driver.find_element(:name, 'commit').click
  @driver.find_element(:class, 'logout').click
end