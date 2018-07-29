Feature: Login Action

  Scenario Outline: Successful Login1
    Given Launch url
    Then enters "<username>" and "<password>"

    Examples: 
      | username   | password |
      | testuser_1 | Test@153 |
      | testuser_2 | Test@153 |

  Scenario: Successful Login2
    Given Launch url
    When User enters "testuser_1" and "Test@123"
    

Scenario: Successful Login with Valid Credentials
	Given User is on Home Page
	When User Navigate to LogIn Page
	And User enters Credentials to LogIn
    | testuser_1 | Test@153 |
	Then Message displayed Login Successfully

	
	Scenario Outline: Add two numbers
    Given I have entered "<a>" into the calculator 
    And I have entered "<b>" into the calculator 
    When I press add
    Then the result should be "<result>" on the screen 
Examples:
    | case | a | b | result |


  Scenario: without and & but
    Given user is on Application landing page
    Given Sign in button is present on screen
    When user clicks on Sign in button
    Then user can see login screen
    When user enters "ShankarGarg" in username field
    When user enters "123456" in password field
    When user clicks Sign in button
    Then user is on home page
    Then title of home page is "GitHub"