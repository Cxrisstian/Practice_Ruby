
When(/^I write "(.*?)" in the general search engine$/) do |type_clothe|
  @name_search = type_clothe
  Middle_var.instance.search_clothes type_clothe
end

Then(/^I should see the name of the search$/) do
  expect(Search_page.instance.get_name_search).to eq @name_search
end

When(/^I select the type of view List for the search result$/) do
  Search_page.instance.click_list_view
end

Then(/^I Should see more information in option list$/) do
  Search_page.instance.content_visible
end