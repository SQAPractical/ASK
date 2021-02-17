Feature: Textual Question - Text
  Scenario: Textual Question - Text - alphanumeric and special characters
    Given I navigate to login website page
    When I type teacher email "qa.sofi@gmail.com" on login page
    And I type password "12345" on login page
    And I click on Sign in button
    And I navigate to Quizzes page
    And I navigate to Create New Quiz page
    And I type Title Of The Quiz "1My test quiz" on quiz-builder page
    And I click on Add Question button
    And I click on Textual radio button
    And I type Question "Test123@$"
    And I click on checkbox Is Show-Stopper question?
    And I click on Save button
#    Then Message "My teerfdgbwesfzvst quiz" appears
    Then Message "1My test quiz" Appears







