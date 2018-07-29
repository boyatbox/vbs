@tert, @ytdf
Feature: Serve coffee
  In order to earn money
  #Customers should be able to
  buy coffee at all times

Scenario: Existing user Verification
    Given user is on Application landing page

    Then we verify user "Shankar" with password "P@ssword123", phone "999" exists


    Then we verify user "Ram" with		 passwo						rd "P@ssword456", phone " 888" exists
    Then		 we verify user "S			ham" with password "P@ssword789", phone "666" exists