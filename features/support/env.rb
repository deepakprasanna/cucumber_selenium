require 'capybara'
require 'capybara/dsl'
require "capybara/cucumber"

Capybara.default_driver = :selenium
Capybara.app_host = "http://gmail.com/"
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end

World(Capybara) 
