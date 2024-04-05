require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, browser: :chrome)
end


Capybara.configure do |config|
    config.default_driver = :chrome
    config.default_max_wait_time = 5
end