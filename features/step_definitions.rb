Given(/^I am on the home page$/) do
  visit 'index.html'
  page.source.should have_selector('html')
end