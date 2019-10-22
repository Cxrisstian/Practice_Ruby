require 'capybara'
require 'singleton'

class Home_page
  include Singleton
  include Capybara::DSL

  def initialize
    @home_page_form = page.has_css?('#index')
  end

  def exist_body
    @home_page_form
  end
end

class Clothes_tab
  def self.click_clothes_tab(name)
    # p page.find('#block_top_menu').text
    page.find('#block_top_menu').find('li', :text => name).click
    @option_selected = name
  end
end

class Middle_var
  include Capybara::DSL
  include Singleton

  def initialize
    @name_search_txt =  page.find('input#search_query_top')
    @search_btn =  page.find("button[name='submit_search']")
  end

  def search_clothes(type_clothe)
    @name_search_txt.set(type_clothe)
    click_search_btn
  end

  def click_search_btn
    @search_btn.click
  end
end
