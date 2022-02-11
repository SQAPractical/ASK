Feature:Feature: Multiple Choice Question - Other text area
  Scenario: Multiple Choice Question - Other text area - Text field is present in a Preview Mode
    When I navigate to login page
    And I type email "teacher2@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign In button
    And I click on "Quizzes" menu item
    And I click "Create New Quiz" button
    And I type title of quiz "natashaluk10"
    And I click Add question button
    And I select "Multiple-Choice" question type for question 1
    And I type text "110" for question 1
    And I type text "a" for option 1 for question 1
    And I type text "b" for option 2 for question 1
    And I select checkbox option 1 as correct answer for question 1
    And I select checkbox Other text area as correct answer for question 1
    And I click "Save" button
    And I click "natashaluk10" on list of quizzes
    And I click "Preview" button on Quizz "natashaluk10" table
    Then textfield "Other" is present in quiz "natashaluk10"

Feature:Feature: Multiple Choice Question - Other text area
  Scenario: Multiple Choice Question - Other text area - Alphanumeric and special characters
    When I navigate to login page





