Feature: 3.19
  @EndToEnd
  Scenario: Teacher creates Quiz and assign it to single student.Student completes Quiz and teacher reviewed it. Student can see status of Quiz
    When Navigate to LogIn page
    And Type email "tanyasptest+7@gmail.com"
    And Type Password "winter2018"
    And Push Sign In button
    And Click on Quizzes on left navigational panel
#  // Create Quiz
    And Push Create new Quiz button
    And Type Title of the Quiz "Automation testing Amina"
    And Click Add Question
    And Select Textual question
    And Type text of Question "What is Cucumber?"
    And Push Save button
    #  // Create Assignments
    And Click Assignments on left navigational panel
    And Push Create new Assignment button
    And Select Quiz "Automation testing Amina"
    And Select Student "Anna Petrova"
    And Push Give Assignment button
    And Click Logout on left navigational panel
    #  // Student  "Anna Petrova"
    And Type email "tanyasptest+7@gmail.com"
    And Type Password "winter2018"
    And Push Sign In button
    And Click My Assignments on left navigational panel
    Then Verify that quiz "Automation testing Amina" was assign
    Then Enter your answer"Cucumber is a software tool used by computer programmers for testing other software"
    Then Push Submit my answers
    And Click Logout on left navigational panel
    #  // Login as teacher and grading Assignment
    And Type email "tanyasptest+7@gmail.com"
    And Type Password "winter2018"
    And Push Sign In button
    And Click Submissions on the left navigational panel
    And Push + button 5 times
    And Push Save button
    And Click Logout on left navigational panel
    #  // Student can see status of Quiz
    And Type email "tanyasptest+7@gmail.com"
    And Type Password "winter2018"
    And Push Sign In button
    And Click My Grades on left navigational panel
    Then Push Details button
    Then Push Close button
    And Click Logout on left navigational panel
    #  // Login as teacher and delete Assignment,delete Quiz
    And Type email "tanyasptest+7@gmail.com"
    And Type Password "winter2018"
    And Push Sign In button
    And Delete quiz with name "Automation testing Amina"
    And Delete assignments with name "Automation testing Amina"
    And Click Logout on left navigational panel