Given(/^I click on Versions tab$/) do
  @driver.find_element(:id, 'tab-versions').click
end

And(/^I click on New version button$/) do
  @driver.find_element(:css, 'a[href*="versions/new"]').click
end

When(/^I fill in project version form$/) do
  @driver.find_element(:id, 'version_name').send_keys 'New project version'
  @driver.find_element(:id, 'version_description').send_keys 'New project version description'
  dropDownStatus = @driver.find_element(:id, 'version_status')
  option = Selenium::WebDriver::Support::Select.new(dropDownStatus)
  option.select_by(:text, 'locked')
  @driver.find_element(:id, 'version_wiki_page_title').send_keys 'Versions page'
  @driver.find_element(:css, '.ui-datepicker-trigger').click
  @driver.find_element(:xpath, './/*[@id="ui-datepicker-div"]/table/tbody/tr[4]/td[3]/a').click
  dropDownSharing = @driver.find_element(:id, 'version_sharing')
  option = Selenium::WebDriver::Support::Select.new(dropDownSharing)
  option.select_by(:value, 'hierarchy')
end

And(/^I click Create button$/) do
  @driver.find_element(:css, 'input[value="Create"]').click
end