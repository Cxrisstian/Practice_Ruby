Feature: Automation practice
  Background: Open automation screen
    Given I open automation page
  Scenario: Navigate Menu
    When I click on "Dresses" main menu options
    Then I should see Navigation menu with option Dresses
      And I should see the option selected displayed in :
    |category title|
    |Main screen   |