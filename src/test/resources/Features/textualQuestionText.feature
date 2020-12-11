Feature: Textual Question
  Scenario: Textual Question - Text-Allowable characters: Alphanumeric & Sp. characters
    When I open "Login" page
    And I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign In button
    And I click on "Quizzes" on item menu
    And I click "Create New Quiz" button
    And I click Title field
    And I type "Test12345!@#%" for the name og quiz
    And I click "Add question"
    And I click "Textual" radio button
    And I click Question field
    And I type "AliTest123@$"  as question
    And I click "Save" button

  Scenario: Textual Question - Text- The field is required
    When I open "Login" page
    And I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign In button
    And I click on "Quizzes" on item menu
    And I click "Create New Quiz" button
    And I click Title field
    And I type "AliTest?" for the name of quiz
    And I click "Add question"
    And I click "Textual" radio button
    And I click Question field
    And I type "What is this?" as question
    And I click "Save" button

  Scenario: Textual Question - Text-Min 1 Characters
    When I open "Login" page
    And I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign In button
    And I click on "Quizzes" on item menu
    And I click "Create New Quiz" button
    And I click Title field
    And I type "A" for the name og quiz
    And I click "Add question"
    And I click "Textual" radio button
    And I click Question field
    And I type "What is this?" as question
    And I click "Save" button

  Scenario: Textual Question - Text-Max 1000 characters
    When I open "Login" page
    And I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign In button
    And I click on "Quizzes" on item menu
    And I click "Create New Quiz" button
    And I click Title field
    And I type "AliTest2" for the name of quiz
    And I click "Add question"
    And I click "Textual" radio button
    And I click Question field
    And I type "1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890"
    And I click "Save" button

  Scenario: Textual Question - Text-Max 1000 +1 characters
    When I open "Login" page
    And I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign In button
    And I click on "Quizzes" on item menu
    And I click "Create New Quiz" button
    And I click Title field
    And I type "AliTest2" for the name of quiz
    And I click "Add question"
    And I click "Textual" radio button
    And I click Question field
    And I type "1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890a"
    And I click "Save" button