Feature: Search a word
  Scenario: Happy path for a search
    Given I open the testing page
    When I select option I have a "car"
      And I select the type of sex "Male"
      And I click on get confirmation
      And I select the "cancel" option
      And I click on show me alert
      And I select the "accept" option