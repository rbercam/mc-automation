require 'rspec'
require 'cucumber'
require 'selenium-webdriver'
require 'capybara/dsl'
require 'site_prism'
require_relative 'helper.rb'
require_relative 'page_helper.rb'

World Capybara::DSL
World(Pages)
World(Helper)

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
    Capybara.current_driver = :selenium
    config.default_max_wait_time = 10
    Capybara.page.driver.browser.manage.window.maximize
end