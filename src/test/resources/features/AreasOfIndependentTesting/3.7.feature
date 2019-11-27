@End-to-End
  Feature: 3.7
    Scenario: Create Quiz with 3 Textual, 3 Single- Choice, 3 Multiple-Choice question 75% passing rate.
      Given I navigate to "login" page
      When I type email "0mohandlove33o@cojqh5.com" on "login" page
      And I type password "12345" on "login" page
      And I click Sign in button
#    Create Quiz 3 textual questions
      When I click on "Quizzes" on left menu
      When I click create new quiz button
      When I type title of the quiz "Quizzo"
      And I click on Add question button
      When I select textual type of Question "one"
      Then I type text of question "What is C?" for question "one"
      And I click on Add question button
      When I select textual type of Question "two"
      Then I type text of question "What is B?" for question "two"
      And I click on Add question button
      When I select textual type of Question "three"
      Then I type text of question "What is N?" for question "three"
##  3 Single-choice questions
      And I click on Add question button
      When I select Single-Choice type of Question "four"
      Then I type text into question field "What is P?" for question "four"
      And I type text into Option field "P" for question "four"
      Then I click on first option radio-button for question "four"
      And I click on Add question button
      When I select Single-Choice type of Question "five"
      Then I type text into question field "What is R" for question "five"
      And I type text into Option field "R" for question "five"
      Then I click on first option radio-button for question "five"
      And I click on Add question button
      When I select Single-Choice type of Question "six"
      Then I type text into question field "What is M?" for question "six"
      And I type text into Option field "M" for question "six"
      Then I click on first option radio-button for question "six"
##  3 Multiple-Choice questions
      And I click on Add question button
      When I select Multiple-Choice type of Question "seven"
      Then I type text in question field "What is O?" for question "seven"
      And I type text in Option field "O" for question "seven"
      And I click on first checkbox  for question "seven"
      And I click on Add question button
      When I select Multiple-Choice type of Question "eight"
      Then I type text in question field "What is X?" for question "eight"
      And I type text in Option field "X" for question "eight"
      And I click on first checkbox  for question "eight"
      And I click on Add question button
      When I select Multiple-Choice type of Question "nine"
      Then I type text in question field "What is V?" for question "nine"
      And I type text in Option field "V" for question "nine"
      And I click on first checkbox  for question "nine"
## passing rate
      And I decrease the passing rate to "75"
      And I save the quiz

