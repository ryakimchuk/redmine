When(/^I am click on My account button$/) do
  @driver.find_element(:class, 'my-account').click
end

Then(/^I should see My account page$/) do
  expect(@driver.find_element(:id, 'my_account_form').displayed?).to be_truthy
end

And(/^I click on Change password button$/) do
  @driver.find_element(:link, 'Change password').click
end

When(/^I fill in change password form$/) do
  @driver.find_element(:id, 'password').send_keys '1234'
  @driver.find_element(:id, 'new_password').send_keys '12345'
  @driver.find_element(:id, 'new_password_confirmation').send_keys '12345'
end

And(/^I click Apply button$/) do
  @driver.find_element(:css, 'input[type="submit"]').click
end

Then(/^I should see "([^"]*)" message$/) do |arg|
  expect(@driver.find_element(:id, 'flash_notice').displayed?).to be_truthy
end

Given(/^I am on my Account page$/) do
  @driver.navigate.to('http://demo.redmine.org/my/account')
end

And(/^I fill in change password form with old password$/) do
  @driver.find_element(:id, 'password').send_keys '12345'
  @driver.find_element(:id, 'new_password').send_keys '1234'
  @driver.find_element(:id, 'new_password_confirmation').send_keys '1234'
end

When(/^I fill in login form with new password$/) do
  @driver.find_element(:id, 'username').send_keys 'testproverkin230'
  @driver.find_element(:id, 'password').send_keys '12345'
end