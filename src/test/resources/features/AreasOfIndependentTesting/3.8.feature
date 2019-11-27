@End-to-End
Feature: 3.8

  Scenario: Teacher creates a Quiz with 3 textual, 3 single choice, 3 multiple choice questions and Passing Rate 90%
    Given I navigate to "login" page
    When I type email "0mohandlove33o@cojqh5.com" on "login" page
    And I type password "12345" on "login" page
    And I click Sign in button
#    Create Quiz 3 textual questions
    When I click on "Quizzes" on left menu
    When I click create new quiz button
    When I type title of the quiz "T Quiz Quiz"
    And I click on Add question button
    When I select textual type of Question "one"
    Then I type text of question "What is Cookies?" for question "one"
    And I click on Add question button
    When I select textual type of Question "two"
    Then I type text of question "What is Browser?" for question "two"
    And I click on Add question button
    When I select textual type of Question "three"
    Then I type text of question "What is Cache?" for question "three"
##  3 Single-choice questions
    And I click on Add question button
    When I select Single-Choice type of Question "four"
    Then I type text into question field "What is hkhkh?" for question "four"
    And I type text into Option field "jnjnkkolk" for question "four"
    Then I click on first option radio-button for question "four"
    And I click on Add question button
    When I select Single-Choice type of Question "five"
    Then I type text into question field "What is rmogkbkb?" for question "five"
    And I type text into Option field "jyouo" for question "five"
    Then I click on first option radio-button for question "five"
    And I click on Add question button
    When I select Single-Choice type of Question "six"
    Then I type text into question field "What is vhbhop?" for question "six"
    And I type text into Option field "aweaea" for question "six"
    Then I click on first option radio-button for question "six"
##  3 Multiple-Choice questions
    And I click on Add question button
    When I select Multiple-Choice type of Question "seven"
    Then I type text in question field "What is ololofo?" for question "seven"
    And I type text in Option field "errhe" for question "seven"
    And I click on first checkbox  for question "seven"
    And I click on Add question button
    When I select Multiple-Choice type of Question "eight"
    Then I type text in question field "What is rmogkbkb?" for question "eight"
    And I type text in Option field "jyouo" for question "eight"
    And I click on first checkbox  for question "eight"
    And I click on Add question button
    When I select Multiple-Choice type of Question "nine"
    Then I type text in question field "What is vhbhop?" for question "nine"
    And I type text in Option field "arfrtea" for question "nine"
    And I click on first checkbox  for question "nine"
#    # passing rate
    And I decrease the passing rate to "90"
    And I save the quiz