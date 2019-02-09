Feature: 3.13
  @EndToEnd_3
  Scenario: Teacher creates Quiz and assign it for 5 individual students
    When  Navigate to login page
    And Type email "tanyasptest+6@gmail.com"
    And Type Password "winter2018"
    And Push Sign In button
    And Click on Quizzes on left navigational panel
#  // Create Quiz
    And Push Create new Quiz button
    And Type Title of the Quiz "Testing Assignment Sofia"
    And Click Add Question
    And Select Single-Choice Type of question
    And Type text of Question "Single choice Question"
    And Type text in Options "Text of option 1" and "Text of option 2"
    And Select first option as correct answer
    And Push Save button
#  // Create Assignments
    And Click Assignments on left navigational panel
    And Push Create new Assignment button
    And Select Quiz "Testing Assignment Sofia"
    And Select Student "Anna Petrova"
    And Select Student "Hanah Svatsin"
    And Select Student "Bob@ Spanch"
    And Select Student "Bob Shvats"
    And Select Student "Olga Stavina"
    And Push Give Assignment button
    And Click Logout on left navigational panel
#  // Student 1 "Anna Petrova"
    And Type email "xmu-housej@jhow.ml"
    And Type Password "Test123*"
    And Push Sign In button
    And Click My Assignments on left navigational panel
    Then Verify that quiz "Testing Assignment Sofia" was assign
    And Click Logout on left navigational panel
#  // Student 2 "Hanah Svatsin"
    And Type email "tx.vats+6@gmail.com"
    And Type Password "12345"
    And Push Sign In button
    And Click My Assignments on left navigational panel
    Then Verify that quiz "Testing Assignment Sofia" was assign
    And Click Logout on left navigational panel
#  // Student 3 "Bob@ Spanch"
    And Type email "olin@bbreghodogx83cuh.ml"
    And Type Password "Test123*"
    And Push Sign In button
    And Click My Assignments on left navigational panel
    Then Verify that quiz "Testing Assignment Sofia" was assign
    And Click Logout on left navigational panel
#  // Student 4 "Bob Shvats"
    And Type email "tx.vats+3@gmail.com"
    And Type Password "12345"
    And Push Sign In button
    And Click My Assignments on left navigational panel
    Then Verify that quiz "Testing Assignment Sofia" was assign
    And Click Logout on left navigational panel
#  // Student 5 "Olga Stavina"
    And Type email "tx.vats+5@gmail.com"
    And Type Password "12345"
    And Push Sign In button
    And Click My Assignments on left navigational panel
    Then Verify that quiz "Testing Assignment Sofia" was assign
    And Click Logout on left navigational panel
#  // Login as teacher and delete Assignment
    And Type email "tanyasptest+6@gmail.com"
    And Type Password "winter2018"
    And Push Sign In button
    And Delete quiz with name "Testing Assignment Sofia"
    And Delete assignments with name "Testing Assignment Sofia"
