Feature: Feature 3

  @EndToEnd_3
  Scenario: Teacher creates Quiz. Student completes Quiz. Teacher gets submission.
    When  Navigate to login page
    And Type email "tanyasptest+6@gmail.com"
    And Type Password "winter2018"
    And Push Sign In button
    And Click on Quizzes on left navigational panel
    And Push Create new Quiz button
    And Type Title of the Quiz "Testing Assignment Katty"
    And Click Add Question
    And Select Single-Choice Type of question
    And Type text of Question "Choose option A"
    And Type text in Options "Option A" and "Option B"
    And Select first option as correct answer
    And Push Save button

  @EndToEnd_3
  Scenario: Teacher creates Quiz. Student completes Quiz. Teacher gets submission.
    When  Navigate to login page
    And Type email "tanyasptest+6@gmail.com"
    And Type Password "winter2018"
    And Push Sign In button
    And Click on Quizzes on left navigational panel
    And Push Create new Quiz button
    And Type Title of the Quiz "Testing Assignment Katty"
    And Click Add Question
    And Select Single-Choice Type of question
    And Type text of Question "Choose option A"
    And Type text in Options "Option A" and "Option B"
    And Select first option as correct answer
    And Push Save button
    And Type email "tanyasptest+6@gmail.com"