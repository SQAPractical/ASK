Feature: Forgot Password
  Scenario: Forgot Password -Valid Email
    Given I navigate to "Login" page
    When I click Forgot Password link
    And I type email address "qa.sofi@gmail.com"
    And I click on Request Password Reset button
    Then message "Your request is confirmed" appears

    Scenario Outline: Forgot password
      Given I navigate to "Login" page
      When I click Forgot Password link
      And I type email address "<email>"
      And I click on Request Password Reset button
      Then message "<message>" appears
      Examples:
        | email | message |
      | errorgmail.com | Should be a valid email address |
      | sjhdsh@skjd.com | Authentication failed. User not found or password does not match |
      | | This field is required |
