@EndToEnd @Sanity
Feature: 3.9
  Scenario: Teacher creates Quiz with 3T,3Single,3 Multiple 30% passing rate.
    Given I navigate to "login" page
    When I type email "xjnrdnpathake@b4top.tk" on "login" page
    And I type password "12345" on "login" page
    And I click Sign in button
#    Create Quiz
    When I click on "Quizzes" on left menu
    When I click create new quiz button
    When I type title of the quiz "New Test Quiz"
    And I click on Add question button
    When I select textual type of Question "one"
    And I type text of question "What is Cookies?" for question "one"
    And I click on Add question button
    When I select textual type of Question "two"
    And I type text of question "text111" for question "two"
    And I click on Add question button
    When I select textual type of Question "three"
    And I type text of question "text333" for question "three"
    And I click on Add question button
    When I select Single-Choice type of Question "four"
    And I type text of question "text444" for Single-Choice Question "four"
    And I type text of answer "zzz444" for question "text444"
    When I select Single-Choice type of Question "five"
    And I type text of question "text555" for Single-Choice Question "five"
    And I type text of answer "zzz555" for question "text555"
    When I select Single-Choice type of Question "six"
    And I type text of question "text666" for Single-Choice Question "six"
    And I type text of answer "zzz666" for question "text666"
        #And I save the quiz
