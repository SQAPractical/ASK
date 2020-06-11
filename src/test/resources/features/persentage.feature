@persentage
Feature: passing

  Scenario: Passing Percentage - Auto without text question
    Given I navigate to "login" page
    When I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign In button
    Then I click on Quizzes button
    Then I click on Create New Quiz button
    And I wait for 2 sec
    Then I type name of quiz "Math" into Title Of The Quiz
    And I wait for 2 sec
    Then I click on Add Question button
    Then I choose Single-Choice question for question 1
    And I wait for 2 sec
    When I type the text of Question 1 : "2+2"
    Then I type the text "4" in the Option 1 of Question 1
    Then I type the text "7" in the Option 2 of Question 1
    And I wait for 2 sec
    Then I mark Option 1 as the correct answer in Question 1
    Then I Add Question
    And I wait for 1 sec
    Then I choose Single-Choice question for question 2
    And I wait for 1 sec
    When I type the text of Question 2 : "3+3"
    And I wait for 1 sec
    Then I type the text "6" in the Option 1 of Question 2
    Then I type the text "9" in the Option 2 of Question 2
    And I wait for 1 sec
    Then I mark Option 1 as the correct answer in Question 2
    Then I Add Question
    And I wait for 1 sec
    Then I choose Single-Choice question for question 3
    And I wait for 1 sec
    When I type the text of Question 3 : "4+4"
    Then I type the text "8" in the Option 1 of Question 3
    Then I type the text "11" in the Option 2 of Question 3
    And I wait for 1 sec
    Then I mark Option 1 as the correct answer in Question 3
    Then I Add Question
    And I wait for 1 sec
    Then I choose Single-Choice question for question 4
    And I wait for 1 sec
    When I type the text of Question 4 : "5+5"
    Then I type the text "10" in the Option 1 of Question 4
    Then I type the text "13" in the Option 2 of Question 4
    And I wait for 1 sec
    Then I mark Option 1 as the correct answer in Question 4
    Then I Add Question
    And I wait for 1 sec
    Then I choose Single-Choice question for question 5
    And I wait for 1 sec
    When I type the text of Question 5 : "6+6"
    Then I type the text "12" in the Option 1 of Question 5
    Then I type the text "17" in the Option 2 of Question 5
    And I wait for 1 sec
    Then I mark Option 1 as the correct answer in Question 5
    Then I click SAVE QUIZ button
    And I wait for 2 sec
    Then I click ASSIGNMENTS in menu
    And I wait for 1 sec
    Then I click Create new Assignment button
    And I wait for 1 sec
    Then I choose Quiz "Math" for assign
    Then I assign Student Assignment "Elena Talley"
    Then I click GIVE ASSIGNMENT button
    Then I logout with confirm message
    And I wait for 1 sec
    Then I navigate to "login" page
    When I type email "ksedr@drepinym.cf"
    And I type password "12345"
    And I click Sign In button
    And I wait for 1 sec
    Then I click MY ASSIGNMENTS button
    And I wait for 1 sec
    Then I click GO TO ASSESSMENT button on quiz "Math"
    And I wait for 1 sec
    Then I choose answer 1 in question 1
    Then I choose answer 1 in question 2
    Then I choose answer 1 in question 3
    Then I choose answer 1 in question 4
    Then I choose answer 2 in question 5
    Then I click SUBMIT MY ANSWERS button
    And I wait for 1 sec
    Then I click to OK button
    And I wait for 1 sec
    Then I click "My Grades" button in menu
    And I wait for 1 sec
    Then I click DETAILS button in quiz "Math"
    And I wait for 1 sec
    Then "Actual points" should contain "20 of 25 / 80%"


