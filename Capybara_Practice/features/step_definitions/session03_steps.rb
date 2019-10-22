Given(/^I open the testing page$/) do
  visit_page("http://only-testing-blog.blogspot.com/2013/09/test.html")
end

When(/^I select option I have a "(.*?)"$/) do |vehicle_type|
  page.find(:css, "input[value='#{vehicle_type.capitalize}']").set(true)
end

And(/^I select the type of sex "([^"]*)"$/) do |sex_type|
  page.find(:css, "input[value='#{sex_type.downcase}']").click
end

And(/^I click on get confirmation$/) do
  page.click_button('Get Confirmation')
end

And(/^I select the "([^"]*)" option$/) do |option|
  if (option == "accept")
    page.driver.browser.switch_to.alert.accept
  else
    page.driver.browser.switch_to.alert.dismiss
  end

end

And(/^I click on show me alert$/) do
  page.click_button('Show Me Alert')
end