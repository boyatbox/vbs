Feature: Login Action
@tag1 @tag2 @tag3
Scenario: Successful Login with Valid Credentials
Given User is on Home Page
When User Navigate to LogIn Page
And User enters UserName and Password
Then Message displayed Login Successfully
@tag4 @tag5
Scenario: Successful LogOut
When User LogOut from the Application
Then Message displayed LogOut Successfully
Scenario: Successful LogOut
When User LogOut from the Application
Then Message displayed LogOut Successfully
@tag7
Scenario: Successful LogOut
When User LogOut from the Application
Then Message displayed LogOut Successfully