@Quiz
Feature: Single Choice Question - Text
  Scenario: Single Choice Question - Text - Alphanumeric and special characters
    Given I navigate to login page
    When I type email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I see role as "TEACHER"
    And I click on "Quizzes" on left menu
    And I click "Create New Quiz" button
    And I type "Test Quiz Single Choice Question !#$%^" title of quiz
    And I click Add Question button
    And I select "Single-Choice" question type for question 1
    And I type "abcDef!!!@##12345" as a question for question 1
    And I type "anytext" as option 1 for question 1
    And I type "anytext 2" as option 2 for question 1
    And I select Option 1 as correct answer for question 1
    And I click "Save" button
    Then Quiz "Test Quiz Single Choice Question !#$%^" present in list of quizzes
    And I delete quiz "Test Quiz Single Choice Question !#$%^"


  Scenario: Single Choice Question - Text - Field is required
    Given I navigate to login page
    When I type email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I see role as "TEACHER"
    And I click on "Quizzes" on left menu
    And I click "Create New Quiz" button
    And I type "Example1" title of quiz
    And I click Add Question button
    And I select "Single-Choice" question type for question 1
    And I type "abcd" as option 1 for question 1
    And I type "12345" as option 2 for question 1
    And I click "Save" button
    Then Error message "This field is required" present for question 1

  Scenario: Single Choice Question - Text - Min 1 Characters
    Given I navigate to login page
    When I type email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I see role as "TEACHER"
    And I click on "Quizzes" on left menu
    And I click "Create New Quiz" button
    And I type "Example1 *?:%;№" title of quiz
    And I click Add Question button
    And I select "Single-Choice" question type for question 1
    And I type "a" as a question for question 1
    And I type "abcde" as option 1 for question 1
    And I type "abcdefgh" as option 2 for question 1
    And I select Option 1 as correct answer for question 1
    And I click "Save" button
    Then Quiz "Example1 *?:%;№" present in list of quizzes
    And I delete quiz "Example1 *?:%;№"


  Scenario: Single Choice Question - Text - 1000 characters
    Given I navigate to login page
    When I type email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I see role as "TEACHER"
    And I click on "Quizzes" on left menu
    And I click "Create New Quiz" button
    And I type "Example2 *?:%;№" title of quiz
    And I click Add Question button
    And I select "Single-Choice" question type for question 1
    And I type "To make code easier to understand for outside readers or for your future self who may have forgotten what you wrote x weeks ago, it helps to add comments to your code. These are just annotations that help explain what’s going on. To make code easier to understand for outside readers or for your future self who may have forgotten what you wrote x weeks ago, it helps to add comments to your code. These are just annotations that help explain what’s going on. To make code easier to understand for outside readers or for your future self who may have forgotten what you wrote x weeks ago, it helps to add comments to your code. These are just annotations that help explain what’s going on. To make code easier to understand for outside readers or for your future self who may have forgotten what you wrote x weeks ago, it helps to add comments to your code. These are just annotations that help explain what’s going on. To make code easier to understand for outside readers or for your future self..." as a question for question 1
    And I type "abcde" as option 1 for question 1
    And I type "abcdefgh" as option 2 for question 1
    And I select Option 1 as correct answer for question 1
    And I click "Save" button
    Then Quiz "Example2 *?:%;№" present in list of quizzes
    And I delete quiz "Example2 *?:%;№"

  Scenario: Single Choice Question - Text - 1001 characters
    Given I navigate to login page
    When I type email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I see role as "TEACHER"
    And I click on "Quizzes" on left menu
    And I click "Create New Quiz" button
    And I type "Example2 *?:%;№" title of quiz
    And I click Add Question button
    And I select "Single-Choice" question type for question 1
    And I type "To make code easier to understand for outside readers or for your future self who may have forgotten what you wrote x weeks ago, it helps to add comments to your code. These are just annotations that help explain what’s going on. To make code easier to understand for outside readers or for your future self who may have forgotten what you wrote x weeks ago, it helps to add comments to your code. These are just annotations that help explain what’s going on. To make code easier to understand for outside readers or for your future self who may have forgotten what you wrote x weeks ago, it helps to add comments to your code. These are just annotations that help explain what’s going on. To make code easier to understand for outside readers or for your future self who may have forgotten what you wrote x weeks ago, it helps to add comments to your code. These are just annotations that help explain what’s going on. To make code easier to understand for outside readers or for your future self..@@" as a question for question 1
    And I type "abcde" as option 1 for question 1
    And I type "abcdefgh" as option 2 for question 1
    And I select Option 1 as correct answer for question 1
    And I click "Save" button
    Then Error message "Question name can contain max 1000 characters" present for question 1

