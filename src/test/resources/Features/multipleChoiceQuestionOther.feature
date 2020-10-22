Feature: Multiple Choice Other text area

  Scenario: Multiple-Choice question includes "Other" text area
    Given I open "login" page
    When I type email "teacher1@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign in button
    Then Text "TEACHER" appears
    When I click on "Quizzes" option button
    And I click on "Create New Quiz" option button
    And I type title "Quiz_Test1" in Quiz name
    When I click on the button Add Question
    And I click on "Multiple-Choice" option button
    When I type "Select A" into Question input field
    And I type "A" into Question "1" input field
    And I type "B" into Question "2" input field
    When I click on checkbox button next to Option "1"
    And I click on "text area option for this question?" option button
    When I click on "Save" option button
    Then Text "List of Quizzes" appears
    When I click on "Quiz_Test1" option button
    When I click "Preview" button in the quiz window title "Quiz_Test1"
    Then Text "PREVIEW MODE" appears
    Then Text "Other" appears

  Scenario: Multiple-Choice "Other" text area - available for student
    Given I open "login" page
    When I type email "teacher1@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign in button
    Then Text "TEACHER" appears
    When I click on "Quizzes" option button
    And I click on "Create New Quiz" option button
    And I type title "Quiz_Test1" in Quiz name
    When I click on the button Add Question
    And I click on "Multiple-Choice" option button
    When I type "Select A" into Question input field
    And I type "A" into Question "1" input field
    And I type "B" into Question "2" input field
    When I click on checkbox button next to Option "1"
    And I click on "text area option for this question?" option button
    When I click on "Save" option button
    And I click on "Assignments" option button
    And I click on "Create New Assignment" option button
    When I click on "Select Quiz To Assign" option button
    And I click on "Quiz_Test1" option button
    And I choose student name "Vladimir Ivanov" and click on the name
    And I click on Give Assignment option button
    And I click on Log Out option button

    When I type email "student6@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign in button
    Then Text "STUDENT" appears
    When I click on "My Assignments" option button
    And I click on Go To Assessment option button
    Then Text "Quiz_Test1" appears
    Then Text "Other" appears

  Scenario: Multiple-Choice "Other" text area - teacher can see the result

    Given I open "login" page
    When I type email "teacher1@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign in button
    Then Text "TEACHER" appears
    When I click on "Quizzes" option button
    And I click on "Create New Quiz" option button
    And I type title "RD Ivanov1" in Quiz name
    When I click on the button Add Question
    And I click on "Multiple-Choice" option button
    When I type "Select A" into Question input field
    And I type "A" into Question "1" input field
    And I type "B" into Question "2" input field
    When I click on checkbox button next to Option "1"
    And I click on "text area option for this question?" option button
    When I click on "Save" option button
    And I click on "Assignments" option button
    And I click on "Create New Assignment" option button
    When I click on "Select Quiz To Assign" option button
    And I click on "RD Ivanov1" option button
    And I choose student name "Vladimir Ivanov" and click on the name
    And I click on Give Assignment option button
    And I click on Log Out option button

    When I type email "student6@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign in button
    Then Text "STUDENT" appears
    When I click on "My Assignments" option button
    And I click on Go To Assessment option button
    Then Text "RD Ivanov1" appears
    When I click on answer choice "A"
    And I type text "checking for test" into Other text field
    And I sleep
    And I click on "Submit My Answers" option button
    Then Text "Success" appears
    When I click on "Ok" option button
    And I click on Log Out option button

    When I type email "teacher1@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign in button
    Then Text "TEACHER" appears
    When I click on "Assignments" option button
    And I click on "RD Ivanov1" option button
    And I click on Review button for student "Vladimir Ivanov"
    Then Text "Other" appears
    Then text typed into "Other" input field can be seen

  Scenario: Delete Assignment
    Given I open "login" page
    When I type email "teacher1@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign in button
    Then Text "TEACHER" appears
    When I click on "Assignments" option button
    When I click on More Options button next to Quiz Name "RD Ivanov1"
    And I click on "Delete Assignment" option button
    And I click on "Delete" option button