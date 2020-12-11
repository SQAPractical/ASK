@fullRegression
Feature: Textual Questions - Show Stopper
  Scenario: Question Show Stopper on Teacher Side
    When I open "login" page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Quizzes" menu item
    And I click "Create New Quiz" button
    And I type quiz title "New Quiz"
    And I click on "Add Question" button
    And I check Textual ratio button
    And I type question "What is QA?"
    And I check Is Show Stopper Question check box
    And I click Save button
    And I click on "Quizzes" menu item
    Then Text "New Quiz" appears

  Scenario:  Question Show Stopper on Student Side
    When I open "login" page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Quizzes" menu item
    And i click "Create New Quiz" button
    And I type quiz title "Quiz9"
    And I click on "Add Question" button
    And I check Textual ratio button
    And I type question "What is QA?"
    And I check Is Show Stopper Question check box
    And I click Save button
    And I click on "Assignments" menu item
    And I click Create New Assignment button
    And I click Select Quiz To Assign
    And I click "Quiz9"
    And I click student "Mikhail Portnov" check box
    And I click "Give Assignment" button
    And I click on "Log Out" menu item
    And I click "Log Out" button on pop up window
    And text "Sign In" appears
    And I type email "student9@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click "Go To My Assignments" button
    And I click "Go To Assessment" "Quiz9" button
    Then redText "Show-Stopper Question" appears











  
    











