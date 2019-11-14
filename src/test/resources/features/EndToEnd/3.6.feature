@EndToEnd @Sanity
Feature: 3.10
  Scenario: Teacher create Quiz with 3T + 3S +3M
    Given I navigate to "login" page
    When I type email "0mohandlove33o@cojqh5.com" on "login" page
    And I type password "12345" on "login" page
    And I click Sign in button
#    Create Quiz
    When I click on "Quizzes" on left menu
    When I click create new quiz button
    When I type title of the quiz "Test Quiz"
    And I click on Add question button
    When I select textual type of Question "one"
    Then I type text of question "What is Cookies?" for question "one"
    And I click on Add question button
    When I select textual type of Question "two"
    Then I type text of question "text111" for question "two"
    And I click on Add question button
    When I select textual type of Question "three"
    Then I type text of question "text333" for question "three"
#    And I save the quiz
