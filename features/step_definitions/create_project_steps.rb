When(/^I click on Projects button$/) do
  @driver.find_element(:class, 'projects').click
end

And(/^I click on New project button$/) do
  @driver.find_element(:link, 'New project').click
end

Then(/^I should see New project form$/) do
  expect(@driver.find_element(:id, 'new_project').displayed?).to be_truthy
end

When(/^I fill in project form$/) do
  page = Registration.new
  @driver.find_element(:id, 'project_name').send_keys page.generate_project_name
  @driver.find_element(:id, 'project_description').send_keys 'My First Project description'
  @driver.find_element(:id, 'project_identifier').send_keys page.generate_project_id
  @driver.find_element(:id, 'project_homepage').send_keys 'http://facebook.com'
  @driver.find_element(:id, 'project_enabled_module_names_boards').click
  @driver.find_element(:id, 'project_enabled_module_names_gantt').click
  @driver.find_element(:css, 'input[value="3"]').click
end

And(/^click Create button$/) do
  @driver.find_element(:name, 'commit').click
end

Then(/^I should see Successful creation message$/) do
  expect(@driver.find_element(:id, 'flash_notice').displayed?).to be_truthy
end