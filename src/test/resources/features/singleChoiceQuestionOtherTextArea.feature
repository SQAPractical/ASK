Feature: Single Choice Question - Other text area
  Scenario: Single Choice Question - Other text area - can be created by teacher
    When I navigate to login page
    And I type email "teacher3@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign In button
    And I click on "Quizzes" menu item
    And I click "Create New Quiz" button
    And I type title of quiz "Test Animals"
    And I click Add question button
    And I select "Single-Choice" question type for question 1
    And I type text "Favorite animal?" for question 1
    And I type text "Cat" for option 1 for question 1
    And I type text "Dog" for option 2 for question 1
    And I select option 1 as correct answer for question 1
    And I click on "Include Other text area option for this question?" checkbox
    And I click "Save" button
    And I click on "Test Animal" quiz on list of Quizzes
    And I click on "Preview" button in "Test Animal" Quiz
    Then Other option is present in "Test Animals" Quiz


  Scenario: Single Choice Question - Other text area - visible for student
    When I navigate to login page
    And I type email "teacher3@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign In button
    And I click on "Quizzes" menu item
    And I click "Create New Quiz" button
    And I type title of quiz "Test Animals"
    And I click Add question button
    And I select "Single-Choice" question type for question 1
    And I type text "Favorite animal?" for question 1
    And I type text "Cat" for option 1 for question 1
    And I type text "Dog" for option 2 for question 1
    And I select option 1 as correct answer for question 1
    And I click on "Include Other text area option for this question?" checkbox
    And I click "Save" button
    And I click on "Assignments" menu item
    And I click "Create New Assignment" button
    And I click on "Select Quiz To Assign" drop down menu
    And I select "Test Animals" Quiz in Select Quiz To Assign drop down menu
    And I click on "Group Filter" drop down menu
    And I select "ABC" group filter in Group Filter drop down menu
    And I click on "Ivan Ivanov" student checkbox on Give Assignment list
    And I click "Give Assignment" button
    And I click on "Log Out" menu item
    And I click on Log Out on Confirmation window
    And I type email "student1@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign In button
    And I click on "My Assignments" menu item
    And I click "Go To Assessment " button on "Test Animals" Quiz
    And I type text "Mouse" in Other Input field
    Then text "Mouse" is present in Other Input field for Quiz for student


  Scenario: Single Choice Question - Other text area - teacher can see what student submitted in Other
    When I navigate to login page
    And I type email "teacher3@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign In button
    And I click on "Quizzes" menu item
    And I click "Create New Quiz" button
    And I type title of quiz "Test Animals"
    And I click Add question button
    And I select "Single-Choice" question type for question 1
    And I type text "Favorite animal?" for question 1
    And I type text "Cat" for option 1 for question 1
    And I type text "Dog" for option 2 for question 1
    And I select option 1 as correct answer for question 1
    And I click on "Include Other text area option for this question?" checkbox
    And I click "Save" button
    And I click on "Assignments" menu item
    And I click "Create New Assignment" button
    And I click on "Select Quiz To Assign" drop down menu
    And I select "Test Animals" Quiz in Select Quiz To Assign drop down menu
    And I click on "Group Filter" drop down menu
    And I select "ABC" group filter in Group Filter drop down menu
    And I click on "Ivan Ivanov" student checkbox on Give Assignment list
    And I click "Give Assignment" button
    And I click on "Log Out" menu item
    And I click on Log Out on Confirmation window
    And I type email "student1@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign In button
    And I click on "My Assignments" menu item
    And I click "Go To Assessment " button on "Test Animals" Quiz
    And I click on radio-button next to "Dog" answer
    And I type text "Mouse" in Other Input field
    And I click "Submit My Answers" button
    And I click on OK in Success Submission
    And I click on "Log Out" menu item
    And I click on Log Out on Confirmation window
    And I type email "teacher3@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign In button
    And I click on "Submissions" menu item
    And I click on "Automatically Graded" label in Submissions
    And I click "Review" button next to student "Ivan Ivanov" and Quiz "Test Animals"
    Then text "Mouse" is present in Other Input field for Quiz for teacher

















