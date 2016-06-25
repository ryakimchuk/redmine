# require 'rspec'
require 'selenium-webdriver'
require 'rubygems'
require 'bundler'
require 'rubygems'
require 'bundler'
require 'capybara/dsl'

Selenium::WebDriver::Firefox::Binary.path='C:\Program Files\Mozilla Firefox\firefox.exe'

# Bundler.require (:default)
# Capybara.default_max_wait_time = 10
# Capybara.run_server = true
# Capybara.default_selector = :css
# Capybara.configure do |config|
#   config.match = :first
#   config.exact_options = false
#   config.ignore_hidden_elements = true
#   config.visible_text_only = true
#   config.include Capybara::DSL
# end
#
# RSpec.configure do |config|
#   config.include Capybara::DSL
# end
#
# Capybara.register_driver :selenium do |app|
#   driver = Capybara::Selenium::Driver.new(app, :browser => :firefox)
# end
#
#
# SitePrism.configure do |config|
#   config.use_implicit_waits = true
# end
#
# Capybara.default_driver = :selenium
#
# World(Capybara::DSL)
#
# After do
#   Capybara.reset_sessions!
# end

Capybara.app_host = 'http://demo.redmine.org/'