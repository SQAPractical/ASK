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
    And I select 1 point per question on slider