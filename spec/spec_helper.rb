require "capybara"
require "capybara/rspec"
require "selenium-webdriver"

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
  config.include Capybara::DSL

  config.after(:each) do |example|
    if example.exception # verifica se o exemplo falhou
      screenshot_name = example.full_description.gsub(/\s+/, "_").downcase
      screenshot_path = "log/screenshots/#{screenshot_name}.png"
      page.save_screenshot(screenshot_path)
      puts "Screenshot salvo em #{screenshot_path}"
    else # caso contrário, tire uma screenshot normal
      screenshot_name = example.full_description.gsub(/\s+/, "_").downcase
      screenshot_path = "log/screenshots/#{screenshot_name}.png"
      page.save_screenshot(screenshot_path)
      puts "Screenshot salvo em #{screenshot_path}"
    end
  end

end

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 15
  config.app_host = 'https://training-wheels-protocol.herokuapp.com'
end 