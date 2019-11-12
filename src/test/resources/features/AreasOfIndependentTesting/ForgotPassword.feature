Feature: Forgot Password
  Scenario: Forgot Password -Valid Email
    Given I navigate to "Login" page
    When I click Forgot Password link
    And I type email address "qa.sofi@gmail.com"
    And I click on Request Password Reset button
    Then message "Your request is confirmed" appears
