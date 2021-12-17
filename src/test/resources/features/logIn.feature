@Smoke @FullRegression
Feature:Log In
  Scenario: Log In - Valid email and password combination
    When I navigate to log in page
    And I type email "student1@gmail.com" to email field
    And I type password "12345Abc" to log in
    And I click on Sign In button
    And student "Ivan Ivanov" appears





