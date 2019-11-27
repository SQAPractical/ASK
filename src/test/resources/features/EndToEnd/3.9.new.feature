@End-to-End
Feature: 3.9.new
  Scenario: Teacher creates a Quiz with 3 t,3 s-ch,3 m-ch questions and Passing Rate 30%
    Given I navigate to "login" page
    When I type email "xjnrdnpathake@b4top.tk" on "login" page
    And I type password "12345" on "login" page
    And I click Sign in button
#    Create Quiz 3 textual questions
    When I click on "Quizzes" on left menu
    When I click create new quiz button
    When I type title of the quiz "New Test Quiz"
    And I click on Add question button
    When I select textual type of Question "one"
    Then I type text of question "What is SDLC?" for question "one"
    And I click on Add question button
    When I select textual type of Question "two"
    Then I type text of question "What is bug?" for question "two"
    And I click on Add question button
    When I select textual type of Question "three"
    Then I type text of question "What is BDD?" for question "three"
#  3 single choice questions
    And I click on Add question button
    When I select Single-Choice type of Question "four"
    Then I type text into question field "test444" for question "four"
    And I type text into Option field "ans441" for question "four"
    And I click on first option radio-button for question "four"
    And I click on Add question button
    When I select Single-Choice type of Question "five"
    Then I type text into question field "test555" for question "five"
    And I type text into Option field "ans551" for question "five"
    And I click on first option radio-button for question "five"
    And I click on Add question button
    When I select Single-Choice type of Question "six"
    Then I type text into question field "test666" for question "six"
    And I type text into Option field "ans661" for question "six"
    And I click on first option radio-button for question "six"
    And I click on Add question button
    #  3 Multiple-Choice questions
    When I select Multiple-Choice type of Question "seven"
    Then I type text in question field "test777" for question "seven"
    And I type text in Option field "ans771" for question "seven"
    And I click on first check-box for question "seven"
    And I click on Add question button
    When I select Multiple-Choice type of Question "eight"
    Then I type text in question field "test888" for question "eight"
    And I type text in Option field "ans881" for question "eight"
    And I click on first check-box for question "eight"
    And I click on Add question button
    When I select Multiple-Choice type of Question "nine"
    Then I type text in question field "test999" for question "nine"
    And I type text in Option field "ans991" for question "nine"
    And I click on first check-box for question "nine"
    And I decrease the passing rate to "30"
    And I save the quiz