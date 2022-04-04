Feature: Test Set for Single Choice Questions - Showstopper

  Scenario: Single-Choice Questions - Assigning showstopper
    When I navigate to the login page
    And I type email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on "Quizzes" on left menu
    And I click "Create New Quiz" button on "quiz-builder" page
    And I type "extra Quiz ++" title of the quiz
    And I click on Add question button
    And I select "Single-Choice" question type for question 1
    And I type text "What is 2/2?" as a question for question 1
    And I type text "1" of option 1 for question 1
    And I type text "2" of option 2 for question 1
    And I select option 1 as correct answer for "Single-Choice" question 1
    And I click on checkbox "Is Show-Stopper question?" on quiz-builder page
    When I click "Preview" button
  #And I click on 1 option to see if get selected
  #And I click on 2 option to see if get selected
    And Element containing text "Show-Stopper Question" is displayed
    And I click "Close" button
    And I click Save button in Create New Quiz
    Then Quiz "extra Quiz ++" is saved in list of quizzes
    And I click on quiz and "Preview" button of selected quiz "extra Quiz ++" on quizzes page
    And I click on 1 option to see if get selected
    And I click on 2 option to see if get selected
    And I click "Close" button
    And I click on "Delete" button of selected quiz "extra Quiz ++" on quizzes page
    And I click "Delete" button on quiz Coformation module
    Then I verify that quiz "extra Quiz ++" is no longer present in list of quizzes

  Scenario: Single-Choice Questions - Student can view showstopper
    When I navigate to the login page
    And I type email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on "Assignments" on left menu
    And I click "Create New Assignment" button on "assignments" page
    And I select Group "ABC" from list
    And I select Quiz To Assign "Cars"
    And I select a Student "Ivan Ivanov" to assign quiz
    And I click on button "Give Assignment"
    And I logout of teacher account
    And I wait 1 sec
    And I type email "student1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on "My Assignments" on left menu
    And I verify that quiz "Cars" is displayed in My assignments


