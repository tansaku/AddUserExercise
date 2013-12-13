require 'capybara/cucumber'
require 'capybara-webkit'
require 'debugger'
require 'selenium/webdriver'

Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :webkit
  config.app_host = "http://localhost:8888/public/"
  config.javascript_driver = :webkit
end