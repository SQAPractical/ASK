Feature: Textual Question - Text
  Scenario: Text - Alphanumeric and special char
    When I navigate to login page
    And I type email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And Element with text "Log Out" is displayed on home page
    And I click on Quizzes button
    And I click on Create New  Quiz button
    And I type Title "Textual 123 !@#$%"