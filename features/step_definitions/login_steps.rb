When(/^I click Sign in button$/) do
  @driver.find_element(:class, 'login').click
end

Then(/^I see login form$/) do
  expect(@driver.find_element(:id, 'login-form').displayed?).to be_truthy
end

When(/^I fill in login form$/) do
  @driver.find_element(:id, 'username').send_keys @page.username
  @driver.find_element(:id, 'password').send_keys '1234'
end

And(/^I click Log in button$/) do
  @driver.find_element(:css, 'input[type="submit"]').click
end

Then(/^I should see greeting message$/) do
  expect(@driver.find_element(:id, 'loggedas').displayed?).to be_truthy
end

When(/^I click on Sign out button$/) do
  @driver.find_element(:class, 'logout').click
end

Then(/^I am logged out$/) do
  expect(@driver.find_element(:class, 'login').displayed?).to be_truthy
end

And(/^new user logged in to the system$/) do
  @driver.find_element(:class, 'login').click
  @driver.find_element(:id, 'username').send_keys @page.username
  @driver.find_element(:id, 'password').send_keys '1234'
  @driver.find_element(:css, 'input[type="submit"]').click
end