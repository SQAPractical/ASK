Feature: Single Choice Question - Options
  Scenario: Single Choice Question - Options - Option name alphanumeric and special characters
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button at login page
    And I click on Quizzes button
    And I click on Create New Quiz button
    And I type Quiz Title "Options"
    And I click on Add Question button
    And I click on Single-Choice button
    And I type question "Option question"
    And I Click on Option 1 radio button as correct answer
    And I type text "Option 123@#" into the Option 1 field
    And I type text "Option 543!()" into the Option 2 field
    And I click on Save button
    Then Application navigates to Quizzes page

  Scenario: Single Choice Question - Options - Option name is required
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button at login page
    And I click on Quizzes button
    And I click on Create New Quiz button
    And I type Quiz Title "Options"
    And I click on Add Question button
    And I click on Single-Choice button
    And I type question "Option question"
    And I type text "" into the Option 1 field
    And I type text "Option 543!()" into the Option 2 field
    Then Text "This field is required" appears

  Scenario: Single Choice Question - Options- Option empty name
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button at login page
    And I click on Quizzes button
    And I click on Create New Quiz button
    And I type Quiz Title "Options"
    And I click on Add Question button
    And I click on Single-Choice button
    And I type question "Option question"
    And I type text "" into the Option 1 field
    And I type text "" into the Option 2 field
    And I click on Save button
    Then Text "Quiz is not completed" appears

  Scenario: Single Choice Question - Options - Option name min char
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button at login page
    And I click on Quizzes button
    And I click on Create New Quiz button
    And I type Quiz Title "Options"
    And I click on Add Question button
    And I click on Single-Choice button
    And I type question "Option question"
    And I Click on Option 1 radio button as correct answer
    And I type text "1" into the Option 1 field
    And I type text "2" into the Option 2 field
    And I click on Save button
    Then Application navigates to Quizzes page

  Scenario: Single Choice Question - Options - Option name max char
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button at login page
    And I click on Quizzes button
    And I click on Create New Quiz button
    And I type Quiz Title "Options"
    And I click on Add Question button
    And I click on Single-Choice button
    And I type question "Option question"
    And I Click on Option 1 radio button as correct answer
    And I type text "abcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghij" into the Option 1 field
    And I type text "2" into the Option 2 field
    And I click on Save button
    Then Application navigates to Quizzes page

  Scenario: Single Choice Question - Options - Option name max+1 char
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button at login page
    And I click on Quizzes button
    And I click on Create New Quiz button
    And I type Quiz Title "Options"
    And I click on Add Question button
    And I click on Single-Choice button
    And I type question "Option question"
    And I Click on Option 1 radio button as correct answer
    And I type text "abcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghij+" into the Option 1 field
    And I type text "2" into the Option 2 field
    And I click on Save button
    Then Text "Option text field can contain no more than 1000 characters" appears

  Scenario: Single Choice Question - Options- Correct answer should be selected
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button at login page
    And I click on Quizzes button
    And I click on Create New Quiz button
    And I type Quiz Title "Options"
    And I click on Add Question button
    And I click on Single-Choice button
    And I type question "Option question"
    And I type text "1" into the Option 1 field
    And I type text "2" into the Option 2 field
    And I click on Save button
    Then Text "Quiz is not completed" appears
    Then Text "*Choose correct answer" appears

  Scenario: Single Choice Question - Options - Add a new option
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button at login page
    And I click on Quizzes button
    And I click on Create New Quiz button
    And I type Quiz Title "Options"
    And I click on Add Question button
    And I click on Single-Choice button
    And I click on Add Option button
    Then Element with text "Option 3*" is displayed

  Scenario: Single Choice Question - Options - Max options
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button at login page
    And I click on Quizzes button
    And I click on Create New Quiz button
    And I type Quiz Title "Options"
    And I click on Add Question button
    And I click on Single-Choice button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    Then Text "Question can have no more than 15 options" appears


  Scenario: Single Choice Question - Options - Move first option to last position
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button at login page
    And I click on Quizzes button
    And I click on Create New Quiz button
    And I type Quiz Title "Options"
    And I click on Add Question button
    And I click on Single-Choice button
    And I type question "Option question"
    And I Click on Option 1 radio button as correct answer
    And I type text "1" into the Option 1 field
    And I type text "2" into the Option 2 field
    And I click on Option 1 settings button
    And I click on Move Option Down



