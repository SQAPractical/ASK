Feature: 3.22
  @EndToEnd_3
  Scenario: 3.22 Teacher assign Quiz to single student. Student completes Quiz and it automatically graded as Failed. Teacher reviews the assignment and change the grade to Passed.
    When Navigate to login page
    And Type email "tanyasptest+8@gmail.com"
    And Type Password "winter2018"
    And Push Sign In button
    And Click on Quizzes on left navigational panel
# // Create Qui
    And Push Create new Quiz button
    And Type Title of the Quiz "Testing Assignment/Failed change to Passed Yulia"
    And Click Add Question
    And Select Single-Choice Type of question
    And Type text of Question "What is Quality?"
    And Type text in Options "Customer satisfaction? Subjective term. It will depend on who the 'customer' is. Each type of customer will have their own view on 'quality'" and "it is value"
    And Select first option as correct answer
    And Push Save button
# // Create Assignment
    And Click Assignments on left navigational panel
    And Push Create new Assignment button
    And Select Quiz "Testing Assignment/Failed change to Passed Yulia"
    And Select Student "Ariel Mermaid*"
    And Push Give Assignment button
    And Click Logout on left navigational panel
# // Student "Ariel Mermaid*"
    And Type email "1mustafalost2014d@rrqkd9t5fhvo5bgh.ga"
    And Type Password "Test123*"
    And Push Sign In button
    And Click My Assignments on left navigational panel
# // Student completes Quiz and it automatically graded as Failed
    When Push Go To Assessment button
    And Select second option as correct answer
    And Push Submit My Answers button
    When Push Ok button
    And Click My Grades on left navigational panel
    Then Verify that quiz "Testing Assignment/Failed change to Passed Yulia" Status is "Failed"
    When Click Logout on left navigational panel
#  // Login as teacher and review the assignment and change the grade to Passed
    When Navigate to login page
    And Type email "tanyasptest+8@gmail.com"
    And Type Password "winter2018"
    And Push Sign In button
    And Click Assignments on left navigational panel
    And Click quiz "Testing Assignment/Failed change to Passed Yulia" on List of Assignments window
    And Push Review button
    When Push Total points "+" button 3 times
    When Push Save button Q
    And Click quiz "Testing Assignment/Failed change to Passed Yulia" on List of Assignments window
    Then Verify that Quiz "Testing Assignment/Failed change to Passed Yulia" Status changed to "Passed"
#  // Teacher deletes Assignment
    When Delete quiz with name "Quiz: Testing Assignment/Failed change to Passed Yulia"
    And Delete assignments with name "Quiz: Testing Assignment/Failed change to Passed Yulia"