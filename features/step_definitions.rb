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