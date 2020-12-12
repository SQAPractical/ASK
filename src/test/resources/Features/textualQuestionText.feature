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
    And I type "AliTest123@$"  as question
    And I click Save button
    Then List of Quizzes page loads
    Then List of Quizzes contain quiz "Test12345!@#%"
    And I click on quiz "Test12345!@#%"
    And I delete quiz "Test12345!@#%"

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
    And I type "What is this?"  as question
    And I click Save button
    Then List of Quizzes page loads
    Then List of Quizzes contain quiz "AliTest?"
    And I click on quiz "AliTest?"
    And I delete quiz "AliTest?"

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
    And I type "What is this?"  as question
    And I click Save button
    Then List of Quizzes page loads
    Then List of Quizzes contain quiz "A"
    And I click on quiz "A"
    And I delete quiz "A"

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
    And I type "1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890"  as question
    And I click Save button
    Then List of Quizzes page loads
    Then List of Quizzes contain quiz "AliTest2"
    And I click on quiz "AliTest2"
    And I delete quiz "AliTest2"

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
    And I type "1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890a"  as question
    And I click Save button
    Then List of Quizzes page loads
    Then List of Quizzes contain quiz "AliTest2"
    And I click on quiz "AliTest2"
    And I delete quiz "AliTest2"