@options
Feature: Options

  @options1
  Scenario: Verify that Quiz can be created with 2 options
    Given I navigate to "login" page
    When I type email "teacher5@gmail.com"
    And I type password "12345"
    And I click Sign In button
    And I click Quizzes menu item
    And I click Create New Quiz button
    And I type Title Of The Quiz "SQA Test"
    And I click Add Question button
    And I select Single-Choice question type
    And I type Question "What is SQA?"
    And I type answers for "Option1" and "Option2"
    And I type Option1 "A"
    And I type Option2 "B"
    And I select correct options
    And I click Save button
    Then Quiz "SQA Test" is created
    And I wait for 2 sec
    And I delete Quiz "SQA Test"


  @options2
  Scenario: Verify that Quiz can not be created with 1 options
    Given I navigate to "login" page
    When I type email "teacher5@gmail.com"
    And I type password "12345"
    And I click Sign In button
    And I click Quizzes menu item
    And I click Create New Quiz button
    And I type Title Of The Quiz "SQA Test"
    And I click Add Question button
    And I select Single-Choice question type
    And I type Question "What is SQA?"
    And I type Option1 "A"
    And I select correct options
    And I click Save button
    Then text "This field is required" appears

  @options3
  Scenario: Verify that Quiz can be created with 15 options
    Given I navigate to "login" page
    When I type email "teacher5@gmail.com"
    And I type password "12345"
    And I click Sign In button
    And I click Quizzes menu item
    And I click Create New Quiz button
    And I type Title Of The Quiz "SQA Test"
    And I click Add Question button
    And I select Single-Choice question type
    And I type Question "What is SQA?"
    And I select correct options
    And I provide 15 Options of answers
    And I click Save button
    And I wait for 2 sec
    Then Quiz "SQA Test" is created
    And I wait for 2 sec
    And I delete Quiz "SQA Test"

  @options4
  Scenario: Verify that Quiz can not be created with 16 options
    Given I navigate to "login" page
    When I type email "teacher5@gmail.com"
    And I type password "12345"
    And I click Sign In button
    And I click Quizzes menu item
    And I click Create New Quiz button
    And I type Title Of The Quiz "SQA Test"
    And I click Add Question button
    And I select Single-Choice question type
    And I type Question "What is SQA?"
    And I select correct options
    And I provide 15 Options of answers
    And I click Add Option button
    Then field Option16 is not displayed


  @options5
  Scenario: Verify that if correct option is not selected user get error message
    Given I navigate to "login" page
    When I type email "teacher5@gmail.com"
    And I type password "12345"
    And I click Sign In button
    And I click Quizzes menu item
    And I click Create New Quiz button
    And I type Title Of The Quiz "SQA Test"
    And I click Add Question button
    And I select Single-Choice question type
    And I type Question "What is SQA?"
    And I type answers for "Option1" and "Option2"
    And I type Option1 "A"
    And I type Option2 "B"
    And I click Save button
    Then text "Choose correct answer" appears


  @options6
  Scenario: Verify Options fields can not be empty
    Given I navigate to "login" page
    When I type email "teacher5@gmail.com"
    And I type password "12345"
    And I click Sign In button
    And I click Quizzes menu item
    And I click Create New Quiz button
    And I type Title Of The Quiz "SQA Test"
    And I click Add Question button
    And I select Single-Choice question type
    And I type Question "What is SQA?"
    And I click Save button
    Then text "This field is required" appears



