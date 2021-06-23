Feature: Textual Question - Text
  Scenario: Text - Alphanumeric and special char
    When I navigate to login page
    And I type email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And Element with text "Log Out" is displayed on home page
    And I click on Quizzes button
    And I click on Create New  Quiz button
    And I type Title "A-Textual 123 !@#$%"
    And I click on Add Question button
    And I click on Textual radio button
    And I type Question "This is text 123 !@#$%"
    And I click on Save button
    And I click on title of crated Quiz "A-Textual 123 !@#$%"
    And I click on Preview button
    And I verify if text with alphanumeric and special characters is visible on the quiz
    Then I delete the Quiz

