@Home
Feature: Check Links - Home Page
  Background: Verify teacher login
    When I navigate to the login page
    And I type "teacher3@gmail.com" in the email field
    And I type "12345Abc" in the password field
    When I click Sign in button
    Then I see the role Teacher

  Scenario: To verify no links are broken on the Home page
    When I collect the links on home page
    And I check the urls of the panel links
    And I check the urls of the body links




