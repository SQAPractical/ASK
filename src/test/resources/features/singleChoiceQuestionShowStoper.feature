Feature: Single Choice Question
  Scenario: Single Choice Question - Show-Stopper
    When I navigate to login page
    And I type email "teacher3@gmail.com" on Login page
    And I type password "12345Abc" on Login page
    And I click Sign In button
   And I click on "Quizzes" menu item
    And I click on "Create New Quiz" button
    And I type title of quiz "QW5"
    And I click Add question button
    And I click "Single-Choice" button for question 1
    And I type text "Do you know?" for question 1
    And I type text "Yes" for option 1
    And I type text "No" for option 2
    And I select option 1 as correct answer for question 1
    And I select "Show-Stopper" as type for question 1
    And I click "Save" button
    And I click on "Assignments" menu item
    And I select  "Create New Assignment" button in "List Of Assignments"
    And I select "Select Quiz To Assign" field in "Give Assignment"
    And I select "QW5"  in "Select Quiz To Assign" menu
    And I select "Vasiliy Vasiliev"
    And I click on "Give Assignment" button in Give Assignment menu
    And I click on "Quizzes" menu item
    And I click on "QW5" in List of Quizzes
    And I click on "Preview" button in "QW5"
    Then  "Show-Stopper" is present in Question 1

    Scenario: Single Choice Question - Show-Stopper - student
      When I navigate to login page
      And I type email "student8@gmail.com" on Login page
      And I type password "12345Abc" on Login page
      And I click Sign In button
      And I click on "My Assignments" menu item
      And I click on "Go To Assessment" button on "QW5" assignment in List of Assignments
      Then "Show-Stopper" is present in Question 1

     Scenario: Delete quiz
       When I navigate to login page
       And I type email "teacher3@gmail.com" on Login page
       And I type password "12345Abc" on Login page
       And I click Sign In button
       And I click on "Quizzes" menu item
       And I select "QW5" quiz
       And I select "Delete" button in "QW5" quiz
       Then "QW5" is not present in "List Of Quizzes"



