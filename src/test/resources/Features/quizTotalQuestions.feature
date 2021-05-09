Feature: Quiz Total Questions
  Scenario: Quiz Total Questions - Allows Up To 50 Questions
    When I navigate to login page
    And I type Email "teacher2@gmail.com"
    And I type Password "12345Abc"
    And I click on Sign In button
    And I click on Quizzes button
    And I click on Create New Quiz button
    And I type Title Of The Quiz "ABC"
    And I click on Add Question
    And I click on Add Question button for 49 times
    And I click on radio buttons 50 times in 50 quizzes
    And I type "Quiz" in different question fields 50 times
    And I click on save button
    Then I'm navigated to the "List of Quizzes"

  Scenario: Quiz Total Questions - Doesn't Allow Over 50 Questions
    When I navigate to login page
    And I type Email "teacher2@gmail.com"
    And I type Password "12345Abc"
    And I click on Sign In button
    And I click on Quizzes button
    And I click on Create New Quiz button
    And I type Title Of The Quiz "ABC"
    And I click on Add Question
    And I click on Add Question button for 50 times
    And I click on radio buttons 51 times in 51 quizzes
    And I type "Quiz" in different question fields 51 times
    And I click on save button
    Then I'm NOT navigated to the "List of Quizzes"
