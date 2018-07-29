Scenario: Existing user Verification
    Given user is on Application landing page
    Then we verify user "Shankar" with password "P@ssword123", phone "999" exists
    Then we verify user "Ram" with password "P@ssword456", phone " 888" exists
    Then we verify user "Sham" with password "P@ssword789", phone "666" exists
	

Scenario: Existing user Verification 
Given user is on Application landing page
    Then we verify following user exists
      | name    | email           | phone |
      | Shankar | sgarg@email.com | 999   |
      | Ram     | ram@email.com   | 888   |
      | Sham    | sham@email.org  | 666   |