class Clothes_tab
  def self.click_clothes_tab(name)
    case name
    when 'Women'
      click_women_tab(name)
    when 'Dresses'
      click_dresses_tab(name)
    when 'T-shirt'
      click_tshirt_tab(name)
    end
  end
end