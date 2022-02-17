Feature: Amazon category search
  Scenario: selecting categories in Amazon Home page
    Given   A user goes to Amazon Home page
    When    The user selects a category in the dropdown list
    And     The user clicks the search button
    Then    Amazon should return a page with the selected category