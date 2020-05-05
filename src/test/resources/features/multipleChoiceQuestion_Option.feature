Feature: Multiple Choice Question_Option
  Scenario: User can create successfully quiz with multiple choice question
    Given I open login page
    When I type email "vctv1023@gmail.com"
    And I type password "12345"
    And I click Sign in button
    Then I wait some minutes
    When I click on "Quizzes" on the left menu
    And I click on "Create New Quiz" button
    Then I wait some minutes
    When I type "Nhung Question" in the "Title Of The Quiz *" field
    And I click on Add Question button
    And In "Q1", I select "Multiple-Choice" type
    And In "Q1", I type "Question 1" in "Question *" field
    And In "Q1", I type "Quizz 1" in "Option 1*" field
    And In "Q1", I type "Quizz 2" in "Option 2*" field
    And I click on "Add Option" button at "Q1" question
    And In "Q1", I type "Quizz 3" in "Option 3*" field
    And In "Q1", I check on "Option 1*" is correct answer
    And In "Q1", I check on "Option 2*" is correct answer
    And In "Q1", I check on "text area option for this question"
    And I click on Add Question button
    Then I wait some minutes
    And In "Q2", I select "Textual" type
    And In "Q2", I type "Question 2" in "Question *" field
    And I click on "Save" button
    Then I wait some minutes
    Then "Nhung Question" will be displayed at List of Quizzes page
    When I click on "Nhung Question" that I have just created
    And I click on "Delete" button of "Nhung Question" question
    And confirmation popup appears
    And I click on "Delete" on "Confirmaton" popup
    Then "Nhung Question" is deleted succesfully
    




