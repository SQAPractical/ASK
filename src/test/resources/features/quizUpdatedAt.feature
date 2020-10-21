Feature: Quiz Updated At
  Scenario: Verify that the date and time are displayed correctly when updating a quiz
    Given I open url "http://ask-stage.portnov.com/#/login"
    When I type email "qa.sofi@gmail.com" on login page
    And I type password "12345" on login page
    And I click Sign in button
    Then Text "Sofia Teacher" appears
    Then I click quizzes on left menu
    Then I click on Create New Quiz
    Then I type title "Quiz555" in Quiz name field
    And I click on Add Question underneath the Title
    Then I choose question type "Textual"
    Then I type question "Tell me about yourself" in the question field
    Then I click on Save button
    Then I click on element just created by me
    Then I click on Edit button
    And I note down the current Date and Time
    Then I click on Save button
    Then I click on element just created by me
    Then Updated At: DateTime match with noted down
    Then I click delete button
    Then I click delete on Conformation message



