Feature: Single Choice Question - Text
  Scenario: Single Choice Question - Text - Alphanumeric and special characters
    When I navigate to login page
    And I type my email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Quizzes" on left menu
    And I click Create New Quiz button
    And I type quiz title "Quiz AG"
    And I click Add question button
    And I select "Single-Choice" question type for question 1
    And I type text "What is SQA123!:@" for question 1
    And I type text "SQA123!:@" for option 1 for question 1
    And I type text "SQA123!" for option 2 for question 1
    And I select option 1 as correct answer for question 1
    And I click Save button
    Then Quiz "Quiz AG" appears in list of quizzes
    And I click on Preview button for quiz "Quiz AG"
    Then Options with text "SQA123!:@" and "SQA123!" id displayed
    And I click Close button
    And I delete Quiz"Quiz AG"

  Scenario: Single Choice Question - Text - The field is required
    When I navigate to login page
    And I type my email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Quizzes" on left menu
    And I click Create New Quiz button
    And I type quiz title "Quiz AG"
    And I click Add question button
    And I select "Single-Choice" question type for question 1
    And I type text "" for question 1
    And I type text "SQA123!:@" for option 1 for question 1
    And I type text "SQA123!" for option 2 for question 1
    And I select option 1 as correct answer for question 1
    And I click Save button
    Then Message "This field is required" appears

  Scenario: Single Choice Question - Text - Min 1 Characters
      When I navigate to login page
      And I type my email "teacher3@gmail.com"
      And I type password "12345Abc"
      And I click Sign In button
      And I click on "Quizzes" on left menu
      And I click Create New Quiz button
      And I type quiz title "Quiz AG"
      And I click Add question button
      And I select "Single-Choice" question type for question 1
      And I type text "W" for question 1
      And I type text "SQA123!:@" for option 1 for question 1
      And I type text "SQA123!" for option 2 for question 1
      And I select option 1 as correct answer for question 1
      And I click Save button
      Then Quiz "Quiz AG" appears in list of quizzes
      And I click on Preview button for quiz "Quiz AG"
      Then Options with text "SQA123!:@" and "SQA123!" id displayed
      And I click Close button
      And I delete Quiz"Quiz AG"

  Scenario: Single Choice Question - Text - Max 1000 Characters
    When I navigate to login page
    And I type my email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Quizzes" on left menu
    And I click Create New Quiz button
    And I type quiz title "Quiz AG"
    And I click Add question button
    And I select "Single-Choice" question type for question 1
    And I type text "1222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222223" for question 1
    And I type text "SQA123!:@" for option 1 for question 1
    And I type text "SQA123!" for option 2 for question 1
    And I select option 1 as correct answer for question 1
    And I click Save button
    Then Quiz "Quiz AG" appears in list of quizzes
    And I click on Preview button for quiz "Quiz AG"
    Then Options with text "SQA123!:@" and "SQA123!" id displayed
    And I click Close button
    And I delete Quiz"Quiz AG"

  Scenario: Single Choice Question - Text - Max 1000+1 Characters
    When I navigate to login page
    And I type my email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Quizzes" on left menu
    And I click Create New Quiz button
    And I type quiz title "Quiz AG"
    And I click Add question button
    And I select "Single-Choice" question type for question 1
    And I type text "12222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222234" for question 1
    And I type text "SQA123!:@" for option 1 for question 1
    And I type text "SQA123!" for option 2 for question 1
    And I select option 1 as correct answer for question 1
    And I click Save button
    Then Quiz "Quiz AG" appears in list of quizzes
    And I click on Preview button for quiz "Quiz AG"
    Then Options with text "SQA123!:@" and "SQA123!" id displayed
    And I click Close button
    And I delete Quiz"Quiz AG"







