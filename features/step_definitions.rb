Given(/^I am on the home page$/) do
  visit 'index.html'
  page.source.should have_selector('html')
  page.source.should have_selector('body')
end

Given(/^I click "(.*?)"$/) do |link|
  click_link link
end