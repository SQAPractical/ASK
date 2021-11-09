@FullRegression @AC-203
  Feature: AC-203 Assignment - Graded by

    @AC-257
    Scenario: Graded by - Teacher

      Given I navigate to login page

#     Login as a Teacher user first
      And I login as user "teacher1@gmail.com" and "12345Abc"

#     Create new Quiz with textual question that can be graded by teacher only
      And I navigate to "Quizzes" tab in left menu
      And I click Create New Quiz button
      And I type quiz title "Test quiz graded by"
      And I click Add question button
      And I select "Textual" question type for question 1
      And I type text "What's up?" for question 1
      And I click Save button

#     Assign quiz to student
      And I navigate to "Assignments" tab in left menu
      And I assign quiz "Test quiz graded by" to student "John Snow"
      And I logout

#     Login as a Student user
      And I login as user "student0@gmail.com" and "12345Abc"
      And I navigate to "My Assignments" tab in left menu

#     Submit a quiz
      And I go to assignment "Test quiz graded by"
      And I enter answer "Cool!!!"
      And I click "Submit My Answers" button
      And I click "Ok" button
      And I logout

#     Login as a Teacher user again
      And I login as user "teacher1@gmail.com" and "12345Abc"

#     Grade an assignment
      And I navigate to "Submissions" tab in left menu
      When I click Grade button
      And I click plus button
      And I click plus button
      And I click plus button
      And I click "Save" button
      And I wait for 4 seconds

#     Verification
      And I navigate to "Assignments" tab in left menu
      Then assignment with quiz "Test quiz graded by" graded by "Teacher"

#     Clean up
      And I delete Quiz "Test quiz graded by"

