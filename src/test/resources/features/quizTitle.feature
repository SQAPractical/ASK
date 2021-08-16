Feature: Quiz - Title
  Scenario: Quiz - Title - Alphanumeric and sp char
    When I navigate to the login page
    And I type Email "teacher1@gmail.com"
    And I type Password "12345Abc"
    And I click the Sign In button
    And I click on "Quizzes" on left
    And I click on the Create New Quiz button
    And I type title of the quiz "abc123$#@!"
    And I click Add Question button
    And I select "Textual" type of question for question "1"
    And I type text "text" of question "1"
    And I click the Save button
    Then I select quiz "abc123$#@!" from the list of quizzes
    And I click the Preview button for quiz "abc123$#@!"
    And I click the Close button
    And I delete the quiz "abc123$#@!"

  Scenario: Quiz - Title - The field is required
    When I navigate to the login page
    And I type Email "teacher1@gmail.com"
    And I type Password "12345Abc"
    And I click Sign In button
    And I click on "Quizzes" on left
    And I click on Create New Quiz button
    And I click on Title Of The Quiz
    And I click outside of Quiz Title field
    Then Message "This field is required" appears

  Scenario: Quiz - Title: Min Characters
      When I navigate to the login page
      And I type Email "teacher1@gmail.com"
      And I type Password "12345Abc"
      And I click Sign In button
      And I click on "Quizzes" on left
      And I click on Create New Quiz button
      And I click on Title Of The Quiz
      And I type title of the quiz "B"
      And I click Add Question button
      And I select "Textual" type of question for question "1"
      And I type text "text" of question "1"
      And I click the Save button
      Then I select quiz "B" from list of quizzes
      And I click the Preview button for quiz "B"
      And I click Close button
      And I delete the quiz "B"

  Scenario: Quiz - Title: Max +1 characters
       When I navigate to the login page
       And I type Email "teacher1@gmail.com"
       And I type Password "12345Abc"
       And I click Sign In button
       And I click on "Quizzes" on left
       And I click on Create New Quiz button
       And I click on Title Of The Quiz
       And I type title of the quiz "aabc123$#@!abc123$#@!abc123$#@!abc123$#@!abc123$#@!abc123$#@!abc123$#@!abc123$#@!abc123$#@!abc123$#@!abc123$#@!abc123$#@!abc123$#"
       And I click Add Question button
       Then Message "Too long. Should be no more than 62 characters" appears

  Scenario: Quiz - Title: Max characters 62
    When I navigate to the login page
    And I type Email "teacher1@gmail.com"
    And I type Password "12345Abc"
    And I click Sign In button
    And I click on "Quizzes" on left
    And I click on Create New Quiz button
    And I click on Title Of The Quiz
    And I type title of the quiz "abc123$#@!abc123$#@!abc123$#@!abc123$#@!abc123$#@!abc123$#@!ab"
    And I click Add Question button
    And I select "Textual" type of question for question "1"
    And I type text "text" of question "1"
    And I click the Save button
    Then I select quiz "abc123$#@!abc123$#@!abc123$#@!abc123$#@!abc123$#@!abc123$#@!ab" from the list of quizzes
    And I click the Preview button for quiz "abc123$#@!abc123$#@!abc123$#@!abc123$#@!abc123$#@!abc123$#@!ab"
    And I click the Close button
    And I delete the quiz "abc123$#@!abc123$#@!abc123$#@!abc123$#@!abc123$#@!abc123$#@!ab"
