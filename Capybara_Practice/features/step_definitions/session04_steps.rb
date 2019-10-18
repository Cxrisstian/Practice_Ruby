Given(/^I open automation page$/) do
  visit_page('http://automationpractice.com/index.php')
end

When(/^I click on "([^"]*)" main menu options$/) do |name_tab|
  click_clothes_tab(name_tab)
end