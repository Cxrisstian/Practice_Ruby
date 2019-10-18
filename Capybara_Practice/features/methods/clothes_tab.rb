require 'capybara'

def click_women_tab(name)
  page.find('a[title="Women"]').set(name)
end
def click_dresses_tab(name)
  page.find('a[title="Dresses"]').set(name)
end
def click_tshirt_tab(name)
  page.find('a[title="T-shirts"]').set(name)
end
