Feature: 3.14
  @EndToEnd
  Scenario: Teacher creates a Quiz, searches students by group and assign Quiz to the group. All students from group get assignments
    When Navigate to login page
    And Type email "tanyasptest+6@gmail.com"
    And Type Password "winter2018"
    And Push Sign in button
    And Click on Quizes in the left sidebar
#  // Create Quiz
    And Push Create new quiz button
    And Type in the Title : "Textual question- score"
    And Push Add Question button
    And Select Textual Type of question
    And Type text of Question "What is the maximum score?"
    And Push Save button
#  //Create Assignments
    And Click Assignments on left sidebar
    And Push Create new Assignment button
    And Select Quiz "Textual question- score"
    And Select Student group "A002"in group filter
    And Click Sellect All button
    And Push Give Assignment button
    And Click on the assignment "Quiz: Textual question- score"
    Then Verify that quiz "Textual question- score" shows status pending for all students in the Group "A002"
    And Click Log out in the left sidebar
    And click Log out in the confirmation window
#  // Verify that students got the assignment
#  // Student "Bob Shvats"
    And Type email "tx.vats+3@gmail.com"
    And Type Password "12345"
    And Push Sign in button
    And Click My Assignments in the left sidebar
    Then Verify that quiz "Textual question- score" is assigned
    And Click Log out in left sidebar
    And click Log out in the confirmation window
#  // Student "Olga Stavina"
    And Type email "tx.vats+5@gmail.com"
    And Type Password "12345"
    And Push Sign in button
    And Click My Assignments in the left sidebar
    Then Verify that quiz "Textual question- score" is assigned
    And Click Log out in left sidebar
    And click Log out in the confirmation window
#  // Student "Hanah Svatsin"
    And Type email "tx.vats+6@gmail.com"
    And Type Password "12345"
    And Push Sign in button
    And Click My Assignments in the left sidebar
    Then Verify that quiz "Textual question- score" is assigned
    And Click Log out in left sidebar
    And click Log out in the confirmation window
#  // Student "Sergiy	Kavats"
    And Type email "tx.vats+1@gmail.com"
    And Type Password "12345"
    And Push Sign in button
    And Click My Assignments in the left sidebar
    Then Verify that quiz "Textual question- score" is assigned
    And Click Log out in left sidebar
    And click Log out in the confirmation window
#  // Login as teacher and delete Assignment
    And Type email "tanyasptest+6@gmail.com"
    And Type Password "winter2018"
    And Push Sign In button
    And Click on Quizes in the left sidebar
    And Select and click on the quiz "Textual question- score"
    And Push Delete button
    And Push Delete button in confirmation window
    And Click Assignments on left sidebar
    And Click on the triple-dots for the assignment "Textual question- score"
    And Click on Delete Assignment pop-up
    And Click Logout on left navigational panel
    And click Log out in the confirmation window