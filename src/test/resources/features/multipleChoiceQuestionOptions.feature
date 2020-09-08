Feature: Multiple Choice question - Options

  Background:
    Given I open "login" page
    Then I type email "teacher3@gmail.com"
    And I type password "12345Abc"
    Then I click Sign in button
    Then Text "Log Out" appears
    Then Text "TEACHER" appears

  Scenario: Create Quiz with 15 choices
    When I click Quizzes button
    Then I click Create New Quiz button
    Then I type Quiz Title "Test for Multiple choices"
    Then I click Add Question button
    Then I click Multiple-Choice button
    And I type Question "any text here"
    Then I click Add Option button 13 times
    And T type "Answer" in 15 options
    And I choose correct answer
    Then I click on Save button
    Then I wait 5 seconds
    Then Text "List of Quizzes" appears
    Then I delete Quiz "Test for Multiple choices"

  Scenario: Option is empty
    When I click Quizzes button
    Then I click Create New Quiz button
    Then I type Quiz Title "Test for Multiple choices"
    Then I click Add Question button
    Then I click Multiple-Choice button
    And I type Question "any text here"
    And T type "Answer" in 1 options
    And I choose correct answer
    And I click on Save button
    Then I wait 1 seconds
    Then Error message appears

  Scenario: Correct option is not selected
    When I click Quizzes button
    Then I click Create New Quiz button
    Then I type Quiz Title "Test for Multiple choices"
    Then I click Add Question button
    Then I click Multiple-Choice button
    And I type Question "any text here"
    And T type "Answer" in 2 options
    And I click on Save button
    Then Error message appears

  Scenario: Question field is empty
    When I click Quizzes button
    Then I click Create New Quiz button
    Then I type Quiz Title "Test for Multiple choices"
    Then I click Add Question button
    Then I click Multiple-Choice button
    And T type "Answer" in 2 options
    And I click on Save button
    Then Error message appears

  Scenario: Text fields accept alphanumeric and Special characters
    When I click Quizzes button
    Then I click Create New Quiz button
    Then I type Quiz Title "Test for Multiple choices 12!@#$%^"
    Then I click Add Question button
    Then I click Multiple-Choice button
    And I type Question "any {>< &$#124 35"
    And T type "Answer12#^%" in 2 options
    And I choose correct answer
    And I click on Save button
    Then I wait 5 seconds
    Then Text "List of Quizzes" appears
    Then I delete Quiz "Test for Multiple choices 12!@#$%^"

  Scenario Outline: Boundary test for text fields
    When I click Quizzes button
    Then I click Create New Quiz button
    Then I type Quiz Title <QTitle>
    Then I click Add Question button
    Then I click Multiple-Choice button
    And I type Question <question>
    And T type <answ> in <NumOfOpt> options
    And I choose correct answer
    And I click on Save button
    Then I wait <sec> seconds
    Then Text <text> appears
    Then I delete Quiz <QuizName>
    Examples:
      | QTitle | question | answ | NumOfOpt | sec | text              | QuizName |
      | "№"    | "&"      | "A"  | 2        | 5   | "List of Quizzes" | "№"      |
      | ""    | "&"      | "A"  | 2        | 5   | "List of Quizzes" | "№"      |













