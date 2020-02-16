Feature: Textual Question Edit

  @ASK-332
  Scenario: Textual Question Edit by Adding Text
    Given I open login page
    And I enter "test@mailinator.com" as login
    And I enter "12345" as password
    And I click SignIn button
    And wait for 3 seconds for page to load
    And I go to Quizzes section
    And I click CreateNewQuiz button
    And I enter "TestQuiz" as a quiz title
    And I click AddQuestion button
    And I select Question type as textual
    And I enter "Question1" as a text of the question
    And I click Save button
    And I click on "TestQuiz"
    And I click on Edit button
    And I add "?" character at the end of existing question
    And I click Save button
    And I click on "TestQuiz"
    And I click on Preview button
    Then I verify that question title now contains "?"
    And I clean up after myself - deleting created quiz "TestQuiz"

  @ASK-335
  Scenario: Textual Question Edit by removing existing text and adding new
    Given I open login page
    And I enter "test@mailinator.com" as login
    And I enter "12345" as password
    And I click SignIn button
    And wait for 3 seconds for page to load
    And I go to Quizzes section
    And I click CreateNewQuiz button
    And I enter "TestQuiz" as a quiz title
    And I click AddQuestion button
    And I select Question type as textual
    And I enter "Question1" as a text of the question
    And I click Save button
    And I click on "TestQuiz"
    And I click on Edit button
    And I change text of the question to "NewQuestion"
    And I click Save button
    And I click on "TestQuiz"
    And I click on Preview button
    Then I verify that question title has been changed to "NewQuestion"
    And I clean up after myself - deleting created quiz "TestQuiz"

    @ASK-336
    Scenario: Textual Question Edit by pasting text
      Given I open login page
      And I enter "test@mailinator.com" as login
      And I enter "12345" as password
      And I click SignIn button
      And wait for 3 seconds for page to load
      And I go to Quizzes section
      And I click CreateNewQuiz button
      And I enter "TestQuiz" as a quiz title
      And I click AddQuestion button
      And I select Question type as textual
      And I enter "Question1" as a text of the question
      And I click Save button
      And I click on "TestQuiz"
      And I click on Edit button
      And I copy and paste question title twice
      And I click Save button
      And I click on "TestQuiz"
      And I click on Preview button
      Then I verify that question title has been changed to "Question1Question1"
      And I clean up after myself - deleting created quiz "TestQuiz"

      @ASK-340
      Scenario: Textual Question Edit by removing all text
        Given I open login page
        And I enter "test@mailinator.com" as login
        And I enter "12345" as password
        And I click SignIn button
        And wait for 3 seconds for page to load
        And I go to Quizzes section
        And I click CreateNewQuiz button
        And I enter "TestQuiz" as a quiz title
        And I click AddQuestion button
        And I select Question type as textual
        And I enter "Question1" as a text of the question
        And I click Save button
        And I click on "TestQuiz"
        And I click on Edit button
        And I erase question title
        And I click Save button
        Then I verify that error message appears "Quiz is not completed. Check highlighted with" ...
        And I discard changes and delete created quiz "TestQuiz"