Feature: Textual

  Scenario: Verify if Textual Question can be Graded manually by Teacher
    Given I navigate to "login" page
    And I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign In button
    Then I click on "Quizzes" menu item
    When I click on Create New Quiz button
    Then I type Title "Textual quizz 10" in the text field
    And I click on Add Question button
    And I select Textual option for the question
    And I type Question in the question field
    And I click Save button
    When I click on Assignments menu
    Then I click on Create New Assignments button
    And I click on Select Quiz to Assign
    And I find a quiz with title Textual quizz 10 from the list of quizes and click on it
    And I choose the student "Emma Emma"
    And I click on Give Assignment button
    Then I logout with confirm message
    When I navigate to "login" page
    And I type email "test4@gmail.com"
    And I type password "12345"
    And I click Sign In button
    When I click on My Assignments menu
    Then I click GO TO ASSESSMENT button on quiz "Textual quizz 10"
    And I type the text of the answer "Hasta Siempre, Comandante" to question number 1
    And I click on Submit my answers button
    And I click OK button
    And I logout with confirm message
    When I navigate to "login" page
    And I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign In button
    Then I click on Submissions menu
    And I click on Grade button
    And I click two times on plus button
    And I click one time on minus button



