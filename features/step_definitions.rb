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

Then(/^I fill in "(.*?)" with "(.*?)" and "(.*?)" with "(.*?)"$/) do |arg1, arg2, arg3, arg4|
	fill_in arg1, :with => arg2
	fill_in arg3, :with => arg4
end