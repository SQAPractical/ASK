Feature: Quiz - Total Questions

  Scenario: Total Questions - value of total questions is equal to total numbers question of quiz
    Given I open login page
    Then I type email "fsam@hulasen36.xyz"
    Then I type password "12345"
    Then I click Sign in button
    Then text "TEACHER" appears
    Then I wait for 1 sec
    Then I click on "Quizzes" on the left menu
    Then I wait for 2 sec
    Then I create new Quizz
    Then I wait for 2 sec
    Then I type "abc" on Title Of The Quiz text box
    Then I click on Add question button
    Then I select question Textual type
    Then I wait for 2 sec
    Then I type "Question 1" on Question text box
    Then I Add second Question
    Then I wait for 2 sec
    Then I select question Single-Choice type
    Then I type "Question 2" on second Question text box
    Then I type "Option 1" in first Option second Question text box
    Then I type "Option 2" in second Option second Question text box
    Then I wait for 2 sec
    Then I select first Option is correct answer
    Then I wait for 2 sec
    Then I Add third Question
    Then I wait for 2 sec
    Then I select question Multiple-Choice type
    Then I type "Question 3" on third Question text box
    Then I type "Option 1" in first Option third Question text box
    Then I type "Option 2" in second Option third Question text box
    Then I wait for 3 sec
    Then I select first Option  is correct answer third Question
    Then I click on Save button
    Then I click on "Quizzes" on the left menu
    Then I wait for 3 sec
    Then I click on Quizz contains text abc
    Then I wait for 3 sec
    Then total Questions field is displayed
    Then total Questions is "3"


  Scenario: Verify that Total Questions value is equal to total numbers question of quiz after deleting some questions in quiz
    Given I open login page
    Then I type email "fsam@hulasen36.xyz"
    Then I type password "12345"
    Then I click Sign in button
    Then text "TEACHER" appears
    Then I click on "Quizzes" on the left menu
    Then I wait for 2 sec
    Then I click on Quizz contains text abc
    Then I wait for 3 sec
    Then total Questions field is displayed
    Then total Questions is "3"
    Then I wait for 2 sec
    Then I edit quizz
    Then I wait for 2 sec
    Then I choose third question
    Then I wait for 2 sec
    Then button Delete Question shuld be displaed
    Then I wait for 2 sec
    Then I click Delete Question
    Then I wait for 2 sec
    Then I confirm delete third Question
    Then I click on Save button
    Then I wait for 2 sec
    Then I click on "Quizzes" on the left menu
    Then I wait for 2 sec
    Then I click on Quizz contains text abc
    Then I wait for 2 sec
    Then total Questions field is displayed
    Then total Questions is "2"


  Scenario: Verify that Total Questions value is equal to total numbers question of quiz after adding some questions in quiz
    Given I open login page
    Then I type email "fsam@hulasen36.xyz"
    Then I type password "12345"
    Then I click Sign in button
    Then text "TEACHER" appears
    Then I wait for 1 sec
    Then I click on "Quizzes" on the left menu
    Then I wait for 2 sec
    Then I click on Quizz contains text abc
    Then I wait for 2 sec
    Then total Questions field is displayed
    Then total Questions is "2"
    Then I edit quizz
    Then I wait for 3 sec
    Then I Add third in Question section
    Then I wait for 2 sec
    Then I select question Multiple-Choice type
    Then I type "Question 3" on third Question text box
    Then I type "Option 1" in first Option third Question text box
    Then I type "Option 2" in second Option third Question text box
    Then I wait for 3 sec
    Then I select first Option  is correct answer third Question
    Then I click on Save button
    Then I click on Quizz contains text abc
    Then I wait for 3 sec
    Then total Questions field is displayed
    Then total Questions is "3"
    Then I delete quizz
    Then I confirm delete quizz