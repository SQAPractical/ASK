Feature: Teacher - Login

  Scenario: Verify teacher login
    When I navigate to login page
    And I type "teacher2@gmail.com" in the email field
    And I type "12345Abc" in the password field
    When I click Sign in button
    Then I see the role Teacher

