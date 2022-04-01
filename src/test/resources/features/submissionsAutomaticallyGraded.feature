Feature: Submissions - Automatically Graded
  Scenario: Submissions - Automatically Graded - Show Stopper - Student - Failed
    When I navigate to login page
    And I type "teacher2@gmail.com" in the email field
    And I type "12345Abc" in the password field
    And I click Sign in button
    And I click on "Quizzes" on left menu
    And I click "Create New Quiz" button
    And I type "12345" title of the quiz
    And I click on Add question button
    And I select "Textual" question type for question 1
    And I type text "1" as a question for question 1
    #And I select 1 point per question on slider
    #And I select 100 passing percentage
    And I click on Add question button
    And I select "Single-Choice" question type for question 2
    And I type text "?" as a question for question 2
    And I type "1" as option 1 for question 2
    And I type "2" as option 2 for question 2
    And I select Option 1 as correct answer for question 2
    #And I select 10 point per question on slider
    And I click "Save" button
    Then Quiz "12345" present in list of quizzes
    And I click on "Assignments" on left menu
    And I click on "Create New Assignment" button
    And I select in dropdown menu option "12345"
    And I select "Ivan Ivanov" from the list of students
    And I click on "Give Assignment" button
    And I logout of teacher account
    And I type the email "student1@gmail.com"
    And I type the password "12345Abc"
    And I click on the Sign in button
    And I click on "My Assignments" on the left menu
    And I click on "Go To Assessment" for "12345" quiz
    And I type "Hello" as an answer for question 1
    And I select option 2 as an answer for question 2
    And I click on "Submit My Answers" button
    And I click on "Ok" button
    And I click on "My Grades" on the left menu
    Then I verify "FAILED" status of "12345" quiz that was graded at "Automatic"