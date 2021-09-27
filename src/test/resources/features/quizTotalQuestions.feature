Feature: Quiz - Total Questions

  Scenario: Quiz - Total Questions - Total questions = 3
    When I navigate to login page
    And I type Email "teacher1@gmail.com"
    And I type Password "12345Abc"
    And I click Sign In button
    And I click "Quizzes" menu item
    And I click Create new quiz button
    And I type quiz title "ABC"
    And I add 3 question selecting Question type "Textual" and type text "My text" for question
    And I click Save button
    Then Quiz "ABC" is present in list with "3" Questions
    And I delete created quiz "ABC"

  Scenario: Quiz - Total Questions - Total questions = 50
    When I navigate to login page
    And I type Email "teacher1@gmail.com"
    And I type Password "12345Abc"
    And I click Sign In button
    And I click "Quizzes" menu item
    And I click Create new quiz button
    And I type quiz title "ABC"
    And I add 50 question selecting Question type "Textual" and type text "My text" for question
    And I click Save button
    Then Quiz "ABC" is present in list with "50" Questions
    And I delete created quiz "ABC"

  Scenario: Quiz - Total Questions - Total question can not contain 51 questions
    When I navigate to login page
    And I type Email "teacher1@gmail.com"
    And I type Password "12345Abc"
    And I click Sign In button
    And I click "Quizzes" menu item
    And I click Create new quiz button
    And I type quiz title "ABC"
    And I add 51 question selecting Question type "Textual" and type text "My text" for question
    Then Save button should be disable
