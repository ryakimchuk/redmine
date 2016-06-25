When(/^I click on username link$/) do
  @driver.find_element(:id, 'loggedas').click
end

Then(/^I should see user information page$/) do
  expect(@driver.find_element(:css, '#content>h2').displayed?).to be_truthy
end

When(/^I click on project name$/) do
  @driver.find_element(:xpath, './/*[@id="content"]/div[2]/ul[2]/li[2]/a').click
end

And(/^I go to project Settings page$/) do
  @driver.find_element(:css, '.settings').click
end

When(/^I click on Members tab$/) do
  @driver.find_element(:id, 'tab-members').click
end

And(/^I click on New member button$/) do
  @driver.find_element(:css, 'a[href*="memberships/new"]').click
end

Then(/^I should see New member dialog window$/) do
  expect(@driver.find_element(:id, 'ui-id-1').displayed?).to be_truthy
end

When(/^I enter username to the search form$/) do
  @driver.find_element(:id, 'principal_search').send_keys 'test'
end

And(/^I choose User from the list$/) do
  @driver.find_element(:xpath, './/*[@id="principals"]/label[1]/input').click
end

When(/^I choose user role$/) do
  @driver.find_element(:css, '.roles-selection>label>input').click
end

And(/^click on Add button$/) do
  @driver.find_element(:id, 'member-add-submit').click
end

Then(/^user should display in the list of members$/) do
  expect(@driver.find_element(:css, '.user.active').displayed?).to be_truthy
end

And(/^I click on Edit button$/) do
  @driver.find_element(:css, '.icon.icon-edit').click
end

When(/^I change user role$/) do
  @driver.find_element(:css, 'input[value="4"]').click
end

And(/^click on Save button$/) do
  @driver.find_element(:name, 'commit').click
end

Then(/^new role will be displayed$/) do
  page.has_content?("Manager, Developer")
end