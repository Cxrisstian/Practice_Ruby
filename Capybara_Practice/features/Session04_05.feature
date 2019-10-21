Feature: Automation practice
  Background: Open automation screen
    Given I open automation page
  #session04
  Scenario: Navigate Menu
    When I click on "DRESSES" main menu options
    Then I should see Navigation menu with option Dresses
      And I should see the option selected displayed in :
        |Category title|
        |Main screen   |

  #session05
  Scenario: Navigate with search TextBox
    When I write "t-shirt" in the general search engine
    Then I should see the name of the search
    When I select the type of view List for the search result
    Then I Should see more information in option list
