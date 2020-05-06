# new feature
# Tags: optional

Feature: Quiz title automation


  Scenario: Title - field is required
    Given I open login page
    When I type email "qa.sofi@gmail.com"
    And I type password "12345Abc"
    And I click Sign in button
    And I click on the Quizzes menu item
    And I click Create new Quiz button
    And I Click on the Title of the Quiz field  and leave it empty
    And I click out of the Title of the Quiz field
    Then I should see error massage


  Scenario: Title - not empty
    Given I open login page
    When I type email "qa.sofi@gmail.com"
    And I type password "12345Abc"
    And I click Sign in button
    And I click on the Quizzes menu item
    And I click Create new Quiz button
    Then I type character on the Title of the Quiz field " "
    Then error massage "This field shouldn't be empty" should appear

  Scenario: Title - minimum 1 character
    Given I open login page
    When I type email "qa.sofi@gmail.com"
    And I type password "12345Abc"
    And I click Sign in button
    And I click on the Quizzes menu item
    And I click Create new Quiz button
    Then I type character on the Title of the Quiz field "A"
    And I click Add Question button


  Scenario: Title - maximum 1000 characters
    Given I open login page
    When I type email "qa.sofi@gmail.com"
    And I type password "12345Abc"
    And I click Sign in button
    And I click on the Quizzes menu item
    And I click Create new Quiz button
    Then I type character on the Title of the Quiz field "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnççwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwopqrstuvwxyzopqrstuvw"
    And I click Add Question button


  Scenario: Title - Not allowed > 1000 characters
    Given I open login page
    When I type email "qa.sofi@gmail.com"
    And I type password "12345Abc"
    And I click Sign in button
    And I click on the Quizzes menu item
    And I click Create new Quiz button
    Then I type character on the Title of the Quiz field "aabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnççwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwopqrstuvwxyzopqrstuvw"
    Then error message "The title of the quiz shouldn`t be more than 1000 characters" should appear

