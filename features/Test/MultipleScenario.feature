Feature: Google Homepage Search
Scenario: User sees the header
  Given I’m on the homepage
  Then I see the header
Scenario: User can search with “Google Search”
  Given I’m on the homepage
  When I type “random page” into the search field
  And I click the Google Search button
  Then I go to the random page search results
Scenario: User can search with “I’m Feeling Lucky”
  Given I’m on the homepage
  When I type “random page” into the search field
  And I click the I’m Feeling Lucky button
  Then I go to a random page