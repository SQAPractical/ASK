Feature: Home page - Links

  Scenario: Home page - Links - Go to submission
    Given I navigate to login page
    And I type Email "teacher1@gmail.com"
    And I type Password "12345Abc"
    Then I push "Sign In" button
    And I go to "Submissions"
    Then I verify the page by text "Submissions"