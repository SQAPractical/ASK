Feature: passing2

  Scenario: Passing Percentage - text question, graded by the teacher
    Given I navigate to "login" page
    When I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign In button
    Then I click on Quizzes button
    Then I click on Create New Quiz button
    And I wait for 1 sec
    Then I type name of quiz "Math-2" into Title Of The Quiz
    And I wait for 1 sec
    Then I click on Add Question button
    And I wait for 1 sec
    Then I choose Textual question for question 1
    And I wait for 1 sec
    When I type the text of Question 1 : "2+2"
    Then I Add Question
    And I wait for 1 sec
    Then I choose Textual question for question 2
    When I type the text of Question 2 : "3+3"
    Then I Add Question
    And I wait for 1 sec
    Then I choose Textual question for question 3
    When I type the text of Question 3 : "4+4"
    Then I Add Question
    And I wait for 1 sec
    Then I choose Textual question for question 4
    When I type the text of Question 4 : "5+5"
    Then I Add Question
    And I wait for 1 sec
    Then I choose Textual question for question 5
    When I type the text of Question 5 : "6+6"
    Then I click SAVE QUIZ button
    And I wait for 2 sec
    Then I click ASSIGNMENTS in menu
    And I wait for 1 sec
    Then I click Create new Assignment button
    And I wait for 1 sec
    Then I choose Quiz "Math-2" for assign
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
    Then I click GO TO ASSESSMENT button on quiz "Math-2"
    And I wait for 1 sec
    Then I the text of the answer "4" to question number 1
    Then I the text of the answer "6" to question number 2
    Then I the text of the answer "8" to question number 3
    Then I the text of the answer "10" to question number 4
    Then I the text of the answer "10" to question number 5
    Then I click SUBMIT MY ANSWERS button
    And I wait for 1 sec
    Then I click to OK button
    And I wait for 1 sec
    Then I logout with confirm message
    And I wait for 1 sec
    When I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign In button
    Then I click to SUBMISSION button
    And I wait for 1 sec
    Then I click GRADE button with "Elena Talley" answers in Quiz "Math-2"
    And I wait for 1 sec
    Then I click 5 times on the "+" button in question 1
    Then I click 5 times on the "+" button in question 2
    Then I click 5 times on the "+" button in question 3
    Then I click 5 times on the "+" button in question 4
    Then "Actual points / percentage:" should contain "20 of 25 / 80%"
    Then status of quiz should be "ASSESSMENT PASSED"
    Then I click "Save" button
    And I wait for 2 sec
    Then I logout with confirm message
    And I wait for 1 sec
    Then I navigate to "login" page
    When I type email "ksedr@drepinym.cf"
    And I type password "12345"
    And I click Sign In button
    And I wait for 1 sec
    Then I click "My Grades" button in menu
    And I wait for 1 sec
    Then I see that my quiz "Math-2" has "PASSED" the status