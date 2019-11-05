@EndToEnd @Sanity
Feature: 3.10
  Scenario: Teacher create Quiz and assign it to student and student get assignments
    Given I navigate to "login" page
    When I type email "0mohandlove33o@cojqh5.com" on "login" page
    And I type password "12345" on "login" page
    And I click Sign in button
#    Create Quiz
    When I click on "Quizzes" on left menu
    When I click create new quiz button
    When I type title of the quiz "Test Quiz"
    And I click on Add question button
    When I select textual type of Question
    Then I type text of question "What is Cookies?"
    And I save the quiz
#     Create Assignment
    When I click on "Assignments" on left menu
    And click on Create New Assignment button
    Then I select quiz "Test Quiz"
    Then I select student "Sophia Jones"
    Then I click Give assignment button
#    When I click Log out
#    And I confirm Log Out
##     Login as a student and check if assignment is available
#    When I type email "qa.sofi@gmail.com" on "login" page
#    And I type password "123456" on "login" page
#    And I click Sign in button
#    When I click on My Assignments
#    Then Student Assignment page should have quiz "3.12 End to End Quiz"
#    When I click Log out
#    And I confirm Log Out
##     Clean up after the test
#    Given I navigate to "login" page
#    When I type email "qa.sofi@gmail.com" on "login" page
#    And I click Sign in button
#    When I click on "Assignments" on left menu
#    Then select quiz "3.12 End to End Quiz" from Assignments and delete
#    And I confirm delete
#    Then I verify if quiz "3.12 End to End Quiz" is deleted from the Assignments page
#    When I click on "Quizzes" on left menu
#    Then I select Quiz "3.12 End to End Quiz"
#    And I delete Quiz
#    And I confirm delete
#    Then I verify if quiz "3.12 End to End Quiz" is deleted from the Quizzes page