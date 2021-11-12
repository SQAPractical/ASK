@FullRegression
Feature: Total Questions
  Scenario: Total Questions-Allows up to 5 questions
    When I navigate to Login page
    And I type my email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Quizzes" on left menu
    And I click Create New Quiz button
    And I type quiz title "TESTT"
    And I add 5 questions to Quiz
    And I click Save button
    Then Quiz "TESTT" appears in list of quizzes
    And Click on quiz "TESTT"
    And I delete Quiz "TESTT"

  Scenario: Total Questions-Allows up to 50 questions
    When I navigate to Login page
    And I type my email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Quizzes" on left menu
    And I click Create New Quiz button
    And I type quiz title "TESTT"
    And I add 50 questions to Quiz
    And I click Save button
    Then Quiz "TESTT" appears in list of quizzes
    And Click on quiz "TESTT"
    And I delete Quiz "TESTT"


  Scenario: Total Questions-Without questions
    When I navigate to Login page
    And I type my email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Quizzes" on left menu
    And I click Create New Quiz button
    And I type quiz title "TESTT"
    And I click Add question button
    And I click Save button
    Then error message "Quiz is not completed." appears
