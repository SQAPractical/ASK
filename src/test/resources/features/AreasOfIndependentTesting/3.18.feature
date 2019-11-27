@End-to-end
Feature: 3.18

  Scenario: 3.18 Teacher create Quiz and assign it to single student. Student completes Quiz and teacher annotate questions in quiz. Student can see each annotation
    Given I navigate to "login" page
    When I type email "oziga-crbp@defandit.com" on "login" page
    And I type password "12345" on "login" page
    And I click Sign in button
#    Create Quiz
    When I click on "Quizzes" on left menu
    When I click create new quiz button
    When I type title of the quiz "23 Quiz"
    And I click on Add question button
    When I select textual type of Question
    Then I type text of question "What is Cookies?"
    And I save the quiz
#     Create Assignment
    When I click on "Assignments" on left menu
    And click on Create New Assignment button
    Then I select quiz "23 Quiz"
    Then I select student "Prrk Prrkaryan"
    Then I click Give assignment button
    When I click Log out
    And I confirm Log Out
#   Login as a student and complete the quiz
    When I type email "ino.cry.5@subnest.net" on "login" page
    And I type password "12345" on "login" page
    And I click Sign in button
    When I click on My Assignments
#    Click on 23 Quiz and complete it
    When I click on Go to Assessment button in Assignments
    And type in answer "o;o;o;o" for question
    And I click on Submit My Answers button
    Then I click Ok in the dialog box
    And I click Log out
    And I confirm Log Out
 #   Login as a teacher and annotate the 23 Quiz
    When I type email "oziga-crbp@defandit.com" on "login" page
    And I type password "12345" on "login" page
    And I click Sign in button
    And I click on Submissions button
    And I click on Grade button
    And I type text "Gooding Jobing!" in Teacher Summary field
    Then I click Save button
    And I click Log out
    And I confirm Log Out
    #Log in as a student to see the teacher's annotation
    When I type email "ino.cry.5@subnest.net" on "login" page
    And I type password "12345" on "login" page
    And I click Sign in button
    And I click on My Grades button
    And I click on Details button with status "FAILED"


