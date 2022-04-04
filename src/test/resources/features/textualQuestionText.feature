@Quiz
Feature: Textual Question - Text
  Scenario: Textual Question - Text - Allowable characters: Alphanumeric & Sp. characters
    Given I navigate to login page
    And I type email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on "Quizzes" on left menu
    And I click "Create New Quiz" button
    And I type "Textual Quiz" title of the quiz
    And I click on Add question button
    And I select "Textual" question type for question 1
    And I type text "ABc1234$% ^" as a question for question 1
    And I click "Save" button
    Then Quiz "Textual Quiz" is saved in list of quizzes
    And I delete quiz "Textual Quiz"

  Scenario: Textual Question - Text - Required field
    Given I navigate to login page
    And I type email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on "Quizzes" on left menu
    And I click "Create New Quiz" button
    And I type " Textual Quiz" title of the quiz
    And I click on Add question button
    And I select "Textual" question type for question 1
    And I type text "" as a question for question 1
    And I click "Save" button
    Then Message "This field is required" appears

  Scenario: Textual Question - Text - Min 1 character
    Given I navigate to login page
    And I type email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on "Quizzes" on left menu
    And I click "Create New Quiz" button
    And I type "Textual Quiz" title of the quiz
    And I click on Add question button
    And I select "Textual" question type for question 1
    And I type text "A" as a question for question 1
    And I click "Save" button
    Then Quiz "Textual Quiz" is saved in list of quizzes
    And I delete quiz "Textual Quiz"

  Scenario: Textual Question - Max 1000 characters
    Given I navigate to login page
    And I type email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on "Quizzes" on left menu
    And I click "Create New Quiz" button
    And I type "Textual Quiz" title of the quiz
    And I click on Add question button
    And I select "Textual" question type for question 1
    And I type text "ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% " as a question for question 1
    And I click "Save" button
    Then Quiz "Textual Quiz" is saved in list of quizzes
    And I delete quiz "Textual Quiz"

  Scenario: Textual Question - Max 1000 + 1 characters
    Given I navigate to login page
    And I type email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on "Quizzes" on left menu
    And I click "Create New Quiz" button
    And I type "Textual Quiz" title of the quiz
    And I click on Add question button
    And I select "Textual" question type for question 1
    And I type text "ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^ABc1234$% ^" as a question for question 1
    And I click "Save" button
    Then Message "Too long. Should be no more than 1000 characters" appears