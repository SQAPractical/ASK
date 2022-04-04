Feature: Textual Question - Show-Stopper
  Scenario: Textual Question - Show-Stopper - Visible for Teacher in Preview mode
    When I navigate to the login page
    And I type the email "teacher2@gmail.com"
    And I type the password "12345Abc"
    And I click on the Sign in button
    And I click on "Quizzes" on the left menu
    And I click on "Create New Quiz" button
    And I type "Textual Show-Stopper" as title of the quiz
    And I click on the Add question button
    And I select "Textual" as question type for question 1
    And I type "ABC123!@$" in question field
    And I click on Show-Stopper checkbox
    And I click on the "Save" button
    And I click on "Textual Show-Stopper" from Quiz list
    And I click  "Preview" button
    Then text "Show-Stopper Question" is present in question 1
    And I click on the "Close" button
#    And I delete the quiz "Textual Show-Stopper"

  Scenario: Textual Question - Show-Stopper- Visible for Student
    When I navigate to the login page
    And I type the email "teacher2@gmail.com"
    And I type the password "12345Abc"
    And I click on the Sign in button
    And I click on "Assignments" on the left menu
    And I click on "Create New Assignment" button
    And I click on "Select Quiz To Assign"
    And I select in dropdown menu option "Textual Show-Stopper"
    And I select "Ivan Ivanov" from the list of students
    And I click on "Give Assignment" button
    And I logout of teacher account
    And I type the email "student1@gmail.com"
    And I type the password "12345Abc"
    And I click on the Sign in button
    And I click on "My Assignments" on the left menu
    And I click on "Go To Assessment" for "Textual Show-Stopper" quiz
    Then text "Show-Stopper Question" is present in question 1

  Scenario: Textual Question - Show-Stopper- Delete Question
    When I navigate to the login page
    And I type the email "teacher2@gmail.com"
    And I type the password "12345Abc"
    And I click on the Sign in button
    And I click on "Quizzes" on the left menu
    And I click on "Create New Quiz" button
    And I type "Textual show-stopper" as title of the quiz
    And I click on the Add question button
    And I select "Textual" as question type for question 1
    And I type "ABC123!@$" in question field
    And I click on Show-Stopper checkbox
    And I click on the "Delete" button
    And I confirm "Delete" question
