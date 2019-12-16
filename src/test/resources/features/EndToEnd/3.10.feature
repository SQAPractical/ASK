@EndToEnd @Sanity
Feature: 3.10
  Scenario: Teacher create Quiz and assign it to student and student get assignments
    Given I navigate to "login" page
    When I type email "qa.sofi@gmail.com" on "login" page
    And I type password "12345" on "login" page
    And I click Sign in button
##    Create Quiz
#    And I click on "Quizzes" on left menu
#    And I click create new quiz button
#    And I type title of the quiz "Selenium quiz"
#    And I click on Add question button
#    And I select textual type of Question
#    And I type text of question "What is x-path?"
#    And I save the quiz
##     Create Assignment
#    And I click on "Assignments" on left menu
#    And click on Create New Assignment button
#    And I select quiz "Selenium quiz"
#    And I select student "Ivan Ivanov"
#    And I click Give assignment button
#    And I click Log out
#    And I confirm Log Out
##     Login as a student and check if assignment is available
#    And I type email "qa.sofi@gmail.com" on "login" page
#    And I type password "123456" on "login" page
#    And I click Sign in button
#    And I click on My Assignments
#    Then Student Assignment page should have quiz "3.12 End to End Quiz"
#    And I click Log out
#    And I confirm Log Out
##     Clean up after the test
#    And I navigate to "login" page
#    And I type email "qa.sofi@gmail.com" on "login" page
#    And I click Sign in button
#    And I click on "Assignments" on left menu
#    And select quiz "Selenium quiz" from Assignments and delete
#    And I confirm delete
#    Then I verify if quiz "Selenium quiz" is deleted from the Assignments page
#    And I click on "Quizzes" on left menu
#    And I select Quiz "Selenium quiz"
#    And I delete Quiz
#    And I confirm delete
#    Then I verify if quiz "Selenium quiz" is deleted from the Quizzes page