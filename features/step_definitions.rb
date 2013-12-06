Given(/^I am on the home page$/) do
  visit 'index.html'
  page.source.should have_selector('html')
  page.source.should have_selector('body')
end

Given(/^I click "(.*?)"$/) do |link|
  click_link link
end

Then(/^I should be on the new user page$/) do
  page.should have_content 'Username: '
  page.should have_content 'Password: '
end

Then(/^I fill in "(.*?)" with "(.*?)" and "(.*?)" with "(.*?)"$/) do |field1, text1, field2, text2|
	fill_in field1, :with => text1
	fill_in field2, :with => text2
end

Then(/^I press "(.*?)"$/) do |button|
  click_button button
end

Then(/^I should see "(.*?)"$/) do |text|
  page.should have_content text
end