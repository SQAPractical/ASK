Feature: Multiple Choice Question - Options
  Scenario: Multiple Choice Question - 2 Options
    When I open "login" page
    And I type login email "teacher1@gmail.com"
    And I type login password "12345Abc"
    And I click Sign In button
    And I click Quizzes menu item
    And I click Create New Quiz button
    And I type title of the Quiz "New Test Quiz"
    And I click Add Question button
    And I click Multiple-Choice radio button
    And I type text of Question "Select A and B"
    And I type text "A" of Option One answer
    And I type text "B" of Option Two answer
    And I check Option One and Option Two check box
    And I click Save button
    Then Quiz with name "New Test Quiz" is present

  Scenario: Multiple Choice Question - Max 15 Options
    When I open "login" page
    And I type login email "teacher1@gmail.com"
    And I type login password "12345Abc"
    And I click Sign In button
    And I click Quizzes menu item
    And I click Create New Quiz button
    And I type title of the Quiz "New Test Quiz"
    And I click Add Question button
    And I click Multiple-Choice radio button
    And I type text of Question "Select A and B"
    And Click Add Option button 13 times
    And I type text "A" of Option One answer
    And I type text "B" of Option Two answer
    And I check Option One and Option Two check box
    And I click Save button
    Then Quiz with name "New Test Quiz" is present








