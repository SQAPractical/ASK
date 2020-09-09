Feature: Quiz
  Scenario: Create 15 options for single question in quiz
    Given I open "login" page
    When I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click submit button
    And I click Quizzes
    And I click Create New Quiz
    And I type in title of quiz "Test quiz"
    And I click Add Question
    And I click single choice button
    And I type question "Test question"
    And I create 15 options
    And I set option 1 as answer
    And I click Save

  Scenario: Create 16 options for single question in quiz
    Given I open "login" page
    When I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click submit button
    And I click Quizzes
    And I click Create New Quiz
    And I type in title of quiz "Test quiz"
    And I click Add Question
    And I click single choice button
    And I type question "Test question"
    And I create 16 options
    And I set option 1 as answer
    And I click Save
    Then message "Too much options" shows