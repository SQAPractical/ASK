Feature: Single Choice Question
  Scenario: Single Choice Question - Options - 3 options
    Given I open "login" page
    When I type email "teacher1@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign in button
    And I click on Quizzes
    And I click on create new quiz button
    And I type title "text for field Quiz 22" in the input field
    And I click on Add Question button
    And I select Question Type Single-Choice
    And I type "What is Regression?" in the question title field
    And I click on Add Option button
    And I type "text" in Option 1
    And I type "text" in Option 2
    And I type "text" in Option 3
    And I click on the Option one radio button
    And I click SAVE
    And I click on quiz "text for field Quiz 22" from the quiz list
    And I click on Preview button near "text for field Quiz 22"
    Then Text "text for field Quiz 22" appears

  Scenario: Single Choice Question - Options - add 15 options
    Given I open "login" page
    When I type email "teacher1@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign in button
    And I click on Quizzes
    And I click on create new quiz button
    And I type title "Quiz 1" in the input field
    And I click on Add Question button
    And I select Question Type Single-Choice
    And I type "What is Regression?" in the question title field
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I type "text" in Option 1
    And I type "text" in Option 2
    And I type "text" in Option 3
    And I type "text" in Option 4
    And I type "text" in Option 5
    And I type "text" in Option 6
    And I type "text" in Option 7
    And I type "text" in Option 8
    And I type "text" in Option 9
    And I type "text" in Option 10
    And I type "text" in Option 11
    And I type "text" in Option 12
    And I type "text" in Option 13
    And I type "text" in Option 14
    And I type "text" in Option 15
    And I click on the Option one radio button
    And I click SAVE
    And I click on quiz "Quiz 1" from the quiz list
    And I click on Preview button near "Quiz 1"
    Then Text "Quiz 1" appears

  Scenario: Single Choice Question - Options - Max+1 options
    Given I open "login" page
    When I type email "teacher1@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign in button
    And I click on Quizzes
    And I click on create new quiz button
    And I type title "Quiz 1" in the input field
    And I click on Add Question button
    And I select Question Type Single-Choice
    And I type "What is Regression?" in the question title field
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    Then Text "More than 15 options are not allowed" appears

  Scenario: Single Choice Question - Options- minimum of 2 options
    Given I open "login" page
    When I type email "teacher1@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign in button
    And I click on Quizzes
    And I click on create new quiz button
    And I type title "Quiz 1" in the input field
    And I click on Add Question button
    And I select Question Type Single-Choice
    And I type "What is Regression?" in the question title field
    And I click on the Settings button on the right of option 1
#   And I click on the Settings button on the right of option
    Then Delete button is disabled

  Scenario: Single Choice Question - Options- Delete option
    Given I open "login" page
    When I type email "teacher1@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign in button
    And I click on Quizzes
    And I click on create new quiz button
    And I type title "Quiz 1" in the input field
    And I click on Add Question button
    And I select Question Type Single-Choice
    And I type "What is Regression?" in the question title field
    And I click on Add Option button
    And I click on the Settings button on the right of option 3
#   And I click on the Settings button on the right of option
    Then the Delete button is enable

   Scenario: Single Choice Question - Options - Move option up
     Given I open "login" page
     When I type email "teacher1@gmail.com" on login page
     And I type password "12345Abc" on login page
     And I click Sign in button
     And I click on Quizzes
     And I click on create new quiz button
     And I type title "Quiz 1" in the input field
     And I click on Add Question button
     And I select Question Type Single-Choice
     And I type "What is Regression?" in the question title field
     And I click on Add Option button
     And I click on Add Option button
     And I type "1111" in Option 1
     And I type "2222" in Option 2
     And I type "3333" in Option 3
     And I type "4444" in Option 4
     And I click on the Option one radio button
     And I click on the Settings button on the right of option 4
     And I click on the Move Up button
     And I click on the Preview button
     Then the text "4444" displays on the third place

   Scenario: Single Choice Question - Options - Move option down
     Given I open "login" page
     When I type email "teacher1@gmail.com" on login page
     And I type password "12345Abc" on login page
     And I click Sign in button
     And I click on Quizzes
     And I click on create new quiz button
     And I type title "Quiz 1" in the input field
     And I click on Add Question button
     And I select Question Type Single-Choice
     And I type "What is Regression?" in the question title field
     And I click on Add Option button
     And I click on Add Option button
     And I type "1111" in Option 1
     And I type "2222" in Option 2
     And I type "3333" in Option 3
     And I type "4444" in Option 4
     And I click on the Option one radio button
     And I click on the Settings button on the right of option 3
     And I click on the Move Down button
     And I click on the Preview button
     Then the text "4444" displays on the third place

   Scenario: Single Choice Question - Options - Correct Choice Required
     Given I open "login" page
     When I type email "teacher1@gmail.com" on login page
     And I type password "12345Abc" on login page
     And I click Sign in button
     And I click on Quizzes
     And I click on create new quiz button
     And I type title "text for field Quiz 22" in the input field
     And I click on Add Question button
     And I select Question Type Single-Choice
     And I type "What is Regression?" in the question title field
     And I click on Add Option button
     And I type "text" in Option 1
     And I type "text" in Option 2
     And I type "text" in Option 3
     And I click SAVE
     Then Text "*Choose correct answer" appears

   Scenario: Single Choice Question - Options - Question is required
     Given I open "login" page
     When I type email "teacher1@gmail.com" on login page
     And I type password "12345Abc" on login page
     And I click Sign in button
     And I click on Quizzes
     And I click on create new quiz button
     And I type title "text for field Quiz 22" in the input field
     And I click on Add Question button
     And I select Question Type Single-Choice
     And I click on Add Option button
     And I type "text" in Option 1
     And I type "text" in Option 2
     And I type "text" in Option 3
     And I click SAVE
     Then Text "This field is required" appears





















