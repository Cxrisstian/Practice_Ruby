require 'singleton'
require 'capybara'
class Search_page
  include Singleton
  include Capybara::DSL

  def initialize
    @search_page_form = page.has_css?('#search')
    @name_search = page.find("#center_column span[class='lighter']")
    @list_btn = page.find('#list .icon-th-list')
    @additional_information = ".product-container .center-block"
  end

  def exist_body
    @search_page_form
  end

  def get_name_search
    @name_search.text.downcase.delete('"')
  end

  def click_list_view
    @list_btn.click
  end

  def content_visible
    page.has_css?("#{@additional_information}")
  end

end
