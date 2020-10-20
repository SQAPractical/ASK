Feature: Single Choice Question
  Scenario: "Other" text area - "Other" text area is displayed for teacher
    Given I open "login" page
    When I type email "teacher1@gmail.com" on login page
    And I type password "12345Abc" on login page
    Then I click Sign in button
    And I click quizzes on left menu
    Then I click on Create New Quiz at the bottom of the page
    And I type "QA test" in Title Of The Quiz field
    Then I click the Add Question button
    And  I click Single choice option
    Then I type "2.1. item from test data file" on question field
    And I type "testing for a business perspective" the answer in OptionOne text field
    Then I type "ensuring that the system is acceptable to all users" the answer in OptionTwo text field
    And I click on the optionOne button
    Then I click Save button
    And I click on the created quiz "QA test" from the Quiz List
    Then I click on Preview button
    And Text "Other" appears


Scenario: "Other" text area available for student
  Given I open "login" page
  When I type email "teacher1@gmail.com" on login page
  And I type password "12345Abc" on login page
  Then I click Sign in button
  And I click quizzes on left menu
  Then I click on Create New Quiz at the bottom of the page
  And I type "QA test" in Title Of The Quiz field
  Then I click the Add Question button
  And  I click Single choice option
  Then I type "2.1. item from test data file" on question field
  And I type "testing for a business perspective" the answer in OptionOne text field
  Then I type "ensuring that the system is acceptable to all users" the answer in OptionTwo text field
  And I click on the optionOne button
  Then I click Save button
  And I click log Out button
  Then I click to confirmation log Out button
  When I type email "student0@gmail.com" on login page
  And I type password "12345Abc" on login page
  Then I click Sign in button
  Then I click Go to My Assignments button








