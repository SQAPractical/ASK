#Created by Almir 10/19/20
Feature: Assignment - Graded by

  Scenario Outline: Verify the Graded by field is displayed as Empty before the student submits the assignment
    Given I open <pageName> page
    When I type email <email> on login page
    And I type password <password> on login page
    And I click Sign in button
    And I click quizzes on left menu
    And I click on Create New Quiz at the bottom of the page
    And I type <quizName> in Title Of The Quiz field
    And I click Add Question underneath the Title
    And I select Question type: Textual
    And I type the question <question> in to Question field
    And I click SAVE on the bottom right corner
    And I click Assignment on left menu
    And I click Create New Assignment on the bottom
    And I click Select Quiz To Assign drop menu
    And I click on created quiz <quizName>
    And I click on Student name <studentName>
    And I click Give Assignment on the bottom
    And I click on assigned quiz
    Then Text <text> appears under Graded By
    Examples:
      | pageName | email               | password | quizName                     | question     | studentName      | text |
      | "login"  | "qa.sofi@gmail.com" | "12345"  | "Special Quiz for Graded By01" | "Question 1" | "Vasiliy Vasiliev" | "-"  |

  Scenario: Verify the Graded by field is displayed as Auto after the student submits the assignment
    Given I open "login" page
    When I type email "qa.sofi@gmail.com" on login page
    And I type password "12345" on login page
    And I click Sign in button
    And I click quizzes on left menu
    And I click on Create New Quiz at the bottom of the page
    And I type "Graded By Second Scenario01?" in Title Of The Quiz field
    And I click Add Question underneath the Title
    And I select Question type: Single-Choice
    And I type the question "Blue or red pill?" in Question field
    And I select Option 1 as a right answer
    And I type answer "Blue"in to Option 1 field
    And I type answer "Red"in to Option 2 field
    And I click SAVE on the bottom right corner
    And I click Assignment on left menu
    And I click Create New Assignment on the bottom
    And I click Select Quiz To Assign drop menu
    And I click on created quiz "Graded By Second Scenario01?"
    And I click on Student name "Vasiliy Vasiliev"
    And I click Give Assignment on the bottom
    And I click Log Out
    And I confirm Log Out in alert message
    And I type email "student8@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign in button
    And I click Go To My Assignments
    And I click Go To Assessment of quiz "Graded By Second Scenario01?"
    And I select "Blue" answer
    And I click Submit My Answers
    And I click Ok in alert message
    And I click Log Out
    And I confirm Log Out in alert message
    And I type email "qa.sofi@gmail.com" on login page
    And I type password "12345" on login page
    And I click Sign in button
    And I click Assignment on left menu
    And I click on assigned quiz
    Then Text "Auto" appears under Graded By

  Scenario Outline: Verify the Graded by field is displayed as the teacher after the teacher reviewed and save the assignment
    Given I open <pageName> page
    When I type email <email> on login page
    And I type password <password> on login page
    And I click Sign in button
    And I click quizzes on left menu
    And I click on Create New Quiz at the bottom of the page
    And I type <quizName> in Title Of The Quiz field
    And I click Add Question underneath the Title
    And I select Textual type of question
    And I type the question <question> in Question field
    And I click SAVE on the bottom right corner
    And I click Assignment on left menu
    And I click Create New Assignment on the bottom
    And I click Select Quiz To Assign drop menu
    And I click on created quiz <quizName>
    And I click on Student name <studentName>
    And I click Give Assignment on the bottom
    And I click Log Out
    And I confirm Log Out in alert message
    And I type email <email1> on login page
    And I type password <password1> on login page
    And I click Sign in button
    And I click Go To My Assignments
    And I click Go To Assessment of quiz <quizName>
    And I type answer <answer> in text field
    And I click Submit My Answers
    And I click Ok in alert message
    And I click Log Out
    And I confirm Log Out in alert message
    And I type email <email> on login page
    And I type password <password> on login page
    And I click Sign in button
    And I click Submissions on left menu
    And I click Grade of submitted quiz <quizName>
    And I click on Save button
    And I click Assignment on left menu
    And I click on assigned quiz <quizName>
    Then Text <text> appears under Graded By
    Examples:
      | pageName | email               | password | quizName                     | question                             | studentName        | email1               | password1  | answer             | text      |
      | "login"  | "qa.sofi@gmail.com" | "12345"  | "Graded By Third Scenario?01" | "Who is the first President of USA?" | "Vasiliy Vasiliev" | "student8@gmail.com" | "12345Abc" | "George Washington" | "Teacher" |







