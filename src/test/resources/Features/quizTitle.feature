Feature: Quiz - Title
  Scenario: Quiz - Title - Alphanumeric and special characters
    When I open Log In page
    And I type email "1arbnora.rexhaj@walmart-web.com"
    And I type password "12345"
    And I click Sign In  button
    Then text "Neil SQA" appears
    When I click Quizzes button
    And I click Create New Quiz
    And I type title "abc@#$123"


