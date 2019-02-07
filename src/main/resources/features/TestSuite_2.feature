Feature: Feature 2

@EndToEnd_2
  Scenario: Teacher creates Quiz and assign it for 5 individual students
    When  Navigate to login page
    And Type email "tanyasptest+6@gmail.com"
    And Type Password "winter2018"
    And Push Sign In button
    And Click on Quizzes on left navigational panel
    And Push Create new Quiz button
    And Type Title of the Quiz "Testing Assignment Sofia"
    And Click Add Question
    And Select Single-Choice Type of question
    And Type text of Question "Single choice Question"
    And Type text in Options "Text of option 1" and "Text of option 2"
    And Select first option as correct answer
    And Push Save button

  @EndToEnd_2
  Scenario: Teacher creates Quiz - 2
    When  Navigate to login page
    And Type email "tanyasptest+6@gmail.com"
    And Type Password "winter2018"
    And Push Sign In button
    And Click on Quizzes on left navigational panel
    And Push Create new Quiz button
    And Type Title of the Quiz "Testing Assignment Sofia"
    And Click Add Question
    And Select Single-Choice Type of question
    And Type text of Question "Single choice Question"
    And Type text in Options "Text of option 1" and "Text of option 2"
    And Select first option as correct answer
    And Push Save button
    And Type email "tanyasptest+6@gmail.com"