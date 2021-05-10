@fullRegression
Feature: Quiz-Title
  Scenario: Allowable characters: Alphanumeric and Sp characters
    When I navigate to login page
    And I type Email "teacher1@gmail.com"
    And I type Password "12345Abc"
    And I click on Sign In button
    And I click on Quizzes button
    And I click on Create New Quiz button
    And I type Title Of The Quiz "Ras123###%^^^&&"
    And I click on Add Question
    And I click on Select "Textual" question type
#    And I type "Ras123$#$%^^^&&"
    And I type text "Test"
    And I click on save button
    Then Text "Ras123###%^^^&&" appears
    And I select "Ras123###%^^^&&" in the List of Quizzes
    And I delete "Ras123###%^^^&&" from the list of quizzes

  Scenario: Quiz Title The field is required
    When I navigate to login page
    And I type Email "teacher1@gmail.com"
    And I type Password "12345Abc"
    And I click on Sign In button
    And I click on Quizzes button
    And I click on Create New Quiz button
    And I type Title Of The Quiz "123"
    And I delete Title of Quiz
#    And I click in Title of the Quiz field
    And I click on Add Question
#    And I click outside Title of the Quiz field
    Then Text "This field is required" appears


  Scenario: Title Max 128 characters
    When I navigate to login page
    And I type Email "teacher1@gmail.com"
    And I type Password "12345Abc"
    And I click on Sign In button
    And I click on Quizzes button
#    And I click in Title of the Quiz field
    And I type Title Of The Quiz "ahjhjhhhhhssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss&&&&&&&&&&&&&&&&&&&&&&&&"
    And I click on Add Question
    And I click on Select "Textual" question type
    And I type text "Test"
    And I click on save button
    And Text "ahjhjhhhhhssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss&&&&&&&&&&&&&&&&&&&&&&&&" appears

  Scenario: Quiz Title- Max 128 plus 1 characters
    When I navigate to login page
    And I type Email "teacher1@gmail.com"
    And I type Password "12345Abc"
    And I click on Sign In button
    And I click on Quizzes button
    And I click on Create New Quiz button
    And I type Title Of The Quiz "ahjhjhhhhhssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss&&&&&&&&&&&&&&&&&&&&&&&&a"
    And I click on Add Question
    And I click on Select "Textual" question type
    And I type text "Test"
    And Text "Too long, should be no more than 128 characters" appears
    #Then Page "http://ask-stage.portnov.com/#/quiz-builder" appears

  Scenario: Quiz - Title- Min 1 Characters
    When I navigate to login page
    And I type Email "teacher1@gmail.com"
    And I type Password "12345Abc"
    And I click on Sign In button
    And I click on Quizzes button
    And I click on Create New Quiz button
    And I type Title Of The Quiz "$"
    And I click on Add Question
    And I click on Select "Textual" question type
    And I type text "Test"
    And I click on save button
    And I select "$" in the List of Quizzes
    Then Text "$" appears
    And I delete "$" from the list of quizzes
