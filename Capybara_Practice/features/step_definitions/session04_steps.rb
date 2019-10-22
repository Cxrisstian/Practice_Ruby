Given(/^I open automation page$/) do
  page.driver.browser.manage.window.maximize
  visit_page('http://automationpractice.com')
end

When(/^I click on "([^"]*)" main menu options$/) do |name_tab|
  # p page.find('#block_top_menu').text
  page.find('#block_top_menu').find('li', :text => name_tab).click
  @option_selected = name_tab
end

Then(/^I should see Navigation menu with option (.*?)$/) do |option|
  expect(page.find('.breadcrumb').text).to include option
end

And(/^I should see the option selected displayed in :$/) do |navigation_options|
  options = navigation_options.raw
  options.each do |side|
    case side.first
      when "Category title"
        screen = page.find('h2')
      when "Main screen"
        screen = page.find('h1').all('span').first
    end
    expect((screen.text).strip).to eq @option_selected
  end
end

