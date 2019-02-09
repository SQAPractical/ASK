Feature: 3.15
  @EndToEnd_3
  Scenario: Teacher creates Quiz. Student completes Quiz. Teacher gets submission.
    When  Navigate to login page
    And Type email "tanyasptest+6@gmail.com"
    And Type Password "winter2018"
    And Push Sign In button
    And Click on Quizzes on left navigational panel
 #  // Create Quiz
    And Push Create new Quiz button
    And Type Title of the Quiz "Testing Assignment Katty"
    And Click Add Question
    And Select Single-Choice Type of question
    And Type text of Question "Choose option A"
    And Type text in Options "Option A" and "Option B"
    And Select first option as correct answer
    And Push Save button
 #  // Create Assignments
    And Click Assignments on left navigational panel
    And Push Create new Assignment button
    And Select Quiz "Testing Assignment Katty"
    And Select Student "Olga Stavina"
    And Push Give Assignment button
    And Click Logout on left navigational panel
 #  // Student "Olga Stavina"
    And Type email "tx.vats+5@gmail.com"
    And Type Password "12345"
    And Push Sign In button
    And Click My Assignments on the left navigational panel

    Then Verify that quiz "Testing Assignment Katty" was assigned
    And Click Go To Assessment button
    And Click Option A radiobutton
    And Push Submit My Answers button
    And Click Ok on Success pop-up message
    And Click Logout on left navigational panel
 # // Teacher gets submission and deletes assignment
    And Type email "tanyasptest+6@gmail.com"
    And Type Password "winter2018"
    And Push Sign In button
    And Click Submissions on left navigational panel
    And Click Automatically Graded tab
    Then Verify that Quiz "Testing Assignment Katty" was submitted
    And Delete quiz with name "Testing Assignment Katty"
    And Delete assignments with name "Testing Assignment Katty"
