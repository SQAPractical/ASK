@FullRegression
Feature: Assignment - Graded by
  Scenario: Assignment-Graded by-Teacher
    When I navigate to login page
    And I type email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Assignments"
    And I click on Create New Assignment
    And I click on Group Filter Drop Down
    And I click "ABC" from list
    And I click on Select Quiz to Assign Drop Down
    And I choose "Automation Quiz" from list
    And I choose "Olga Nikolaeva" from group "ABC"
    And I click on Give Assignment
    And I click on "Log Out" button
    And I click on Conformation Log Out button
    And I type email "student3@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on Go To My Assignments
    And I click on Go To Assessment with quiz "Automation Quiz"
    And I type answer "Information" into Question 1
    And I select answer "Los Angeles" for Question 2
    And I choose answer "Steve Jobs" for Question 3
    And I click on Submit My Answers
    Then Then Message "Success" appears
    And I click on Ok button
    And I click on "My Grades"
    Then quiz "Automation Quiz" appears in status "PENDING"
    And I click on "Log Out" button
    And I click on Conformation Log Out button
    And I type email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Submissions"
    And I click on Grade with quiz title "Automation Quiz"
    And I click on plus sign for Question 1 to add points
    And I click Save button
    And I click on "Assignments"
    And I click on quiz title "Automation Quiz"
    Then I see under Graded By "Teacher" with quiz title "Automation Quiz"

  Scenario: Assignment-Graded by-None
    When I navigate to login page
    And I type email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Assignments"
    And I click on Create New Assignment
    And I click on Group Filter Drop Down
    And I click "ABC" from list
    And I click on Select Quiz to Assign Drop Down
    And I choose "AUTOMATION QUIZ 1" from list
    And I choose "Olga Nikolaeva" from group "ABC"
    And I click on Give Assignment
    And I click on quiz title "AUTOMATION QUIZ 1"
    Then I see under Graded By "-" with quiz title "AUTOMATION QUIZ 1"

  Scenario: Assignment-Grade By-Auto
    When I navigate to login page
    And I type email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Assignments"
    And I click on Create New Assignment
    And I click on Group Filter Drop Down
    And I click "ABC" from list
    And I click on Select Quiz to Assign Drop Down
    And I choose "Test Autom D" from list
    And I choose "Olga Nikolaeva" from group "ABC"
    And I click on Give Assignment
    And I click on "Log Out" button
    And I click on Conformation Log Out button
    And I type email "student3@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on Go To My Assignments
    And I click on Go To Assessment with quiz "Test Autom D"
    And I select answer "B" for Question 1
    And I select answer "A" for Question 2
    And I click on Submit My Answers
    Then Then Message "Success" appears
    And I click on Ok button
    And I click on "Log Out" button
    And I click on Conformation Log Out button
    And I type email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Assignments"
    And I click on quiz title "Test Autom D"
    Then I see under Graded By "Auto" with quiz title "Test Autom D"












