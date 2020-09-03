Feature: Login
  Scenario: To verify that user is able to login with valid credentials
    Given I open "http://ask-stage.portnov.com/#/login" page
    Then I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign in button
    And I wait for 3 sec