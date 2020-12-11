Feature: Multiple Choice Question - Options
  Scenario: Multiple Choice Question - 2 Options
    When I open "login" page
    And I type login email "teacher1@gmail.com"
    And I type login password "12345Abc"
    And I click Sign In button
    And I click Quizzes menu item
    And I click Create New Quiz button
    And I type title of the Quiz "Multiple Choice Question - 2 Options"
    And I click Add Question button
    And I click Multiple-Choice radio button
    And I type text of Question "Select A and B"
    And I type text for Option One answer "A"
    And I type text for Option Two answer "B"
    And I check Option One and Option Two check box
    And I click Save button
    Then Quiz with name "Multiple Choice Question - 2 Options" is present

  Scenario: Multiple Choice Question - Max 15 Options
    When I open "login" page
    And I type login email "teacher1@gmail.com"
    And I type login password "12345Abc"
    And I click Sign In button
    And I click Quizzes menu item
    And I click Create New Quiz button
    And I type title of the Quiz "Multiple Choice Question - Max 15 Options"
    And I click Add Question button
    And I click Multiple-Choice radio button
    And I type text of Question "Max 15 Options Quiz title Question"
    And I type text for Option One answer "A"
    And I type text for Option Two answer "B"
    And I click Add Option button 13 times and type "answer"
    And I check Option One and Option Two check box
    And I click Save button
    Then Quiz with name "Multiple Choice Question - Max 15 Options" is present

  Scenario: Multiple Choice Question - Max+1(16) Options
    When I open "login" page
    And I type login email "teacher1@gmail.com"
    And I type login password "12345Abc"
    And I click Sign In button
    And I click Quizzes menu item
    And I click Create New Quiz button
    And I type title of the Quiz "Multiple Choice Question - Max+1(16) Options"
    And I click Add Question button
    And I click Multiple-Choice radio button
    And I type text of Question "Max 15 Options Quiz title"
    And I type text for Option One answer "A"
    And I type text for Option Two answer "B"
    And I click Add Option button 14 times and type "answer"
    And I check Option One and Option Two check box
    And I click Save button
    Then Quiz with name "Multiple Choice Question - Max+1(16) Options" is not present

    Scenario: Multiple Choice Question - Min 1 Characters in text field
      When I open "login" page
      And I type login email "teacher1@gmail.com"
      And I type login password "12345Abc"
      And I click Sign In button
      And I click Quizzes menu item
      And I click Create New Quiz button
      And I type title of the Quiz "Multiple Choice Question - Min 1 Characters in text field"
      And I click Add Question button
      And I click Multiple-Choice radio button
      And I type text of Question "a"
      And I type text for Option One answer "1"
      And I type text for Option Two answer "1"
      And I check Option One and Option Two check box
      And I click Save button
      Then Quiz with name "Multiple Choice Question - Min 1 Characters in text field" is present

  Scenario: Multiple Choice Question - Max 1000 Characters in text field
    When I open "login" page
    And I type login email "teacher1@gmail.com"
    And I type login password "12345Abc"
    And I click Sign In button
    And I click Quizzes menu item
    And I click Create New Quiz button
    And I type title of the Quiz "Multiple Choice Question - Max 1000 Characters in text field"
    And I click Add Question button
    And I click Multiple-Choice radio button
    And I type text of Question "OneThousandCharactersLongStringsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerth"
    And I type text for Option One answer "OneThousandCharactersLongStringsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerth"
    And I type text for Option Two answer "OneThousandCharactersLongStringsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerth"
    And I check Option One and Option Two check box
    And I click Save button
    Then Quiz with name "Multiple Choice Question - Max 1000 Characters in text field" is present

  Scenario: Multiple Choice Question - Max Characters + 1 in text field
    When I open "login" page
    And I type login email "teacher1@gmail.com"
    And I type login password "12345Abc"
    And I click Sign In button
    And I click Quizzes menu item
    And I click Create New Quiz button
    And I type title of the Quiz "Multiple Choice Question - Max Characters + 1 in text field"
    And I click Add Question button
    And I click Multiple-Choice radio button
    And I type text of Question "OneThousand1CharactersLongStringsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerth"
    And I type text for Option One answer "OneThousand1CharactersLongStringsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerth"
    And I type text for Option Two answer "OneThousand1CharactersLongStringsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerthfgargfasdfgsdfgadsfasdfsgfnjeyjerth"
    And I check Option One and Option Two check box
    And I click Save button
    Then Quiz with name "Multiple Choice Question - Max Characters + 1 in text field" is not present

  Scenario: Multiple-Choice question - graded automatically
    When I open "login" page
    And I type login email "teacher1@gmail.com"
    And I type login password "12345Abc"
    And I click Sign In button
    And I click Quizzes menu item
    And I click Create New Quiz button
    And I type title of the Quiz "Multiple-Choice question - graded automatically"
    And I click Add Question button
    And I click Multiple-Choice radio button
    And I type text of Question "TEST FOR AUTO GRADE"
    And I type text for Option One answer "A"
    And I type text for Option Two answer "B"
    And I check Option One and Option Two check box
    And I click Save button
    And I click Assignments menu item
    And I click Create New Assignment button
    And I choose Quiz to Assign "Multiple-Choice question - graded automatically"
    And I click "Olga Nikolaeva" name
    And I click Give Assignment button








