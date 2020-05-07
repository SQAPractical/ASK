Feature: End To End 3.4
  Scenario: Teacher Creates Quiz with 3 Textual, 3 Single- Choice, 3 Multiple-Choice questions
    Given I open login page
    When I type email "vctv1023@gmail.com"
    And I type password "12345"
    And I click Sign in button
    Then I wait some minutes
    When I click on "Quizzes" on the left menu
    Then I wait some minutes
    And I click on "Create New Quiz" button
    Then I wait some minutes
    When I type "Nhung Mix" in the "Title Of The Quiz *"
    And I click on Add Question button
    Then I wait some minutes
    When I add 9 questions which include 3 questions "Multiple-Choice", 3 questions "Single-Choice", and 3 questions "Textual"
    Then I wait some minutes
    When I click on "Save" button
    Then I wait some minutes
    Then "Nhung Mix" will be displayed at List of Quizzes page
    When I click on "Nhung Mix" that I have just created
    And I click on "Delete" button of "Nhung Mix" question
    And "Confirmation" popup appears
    Then I wait some minutes
    When I click on "Delete" on "Confirmation" popup
    Then I wait some minutes
    Then "Nhung Mix" is deleted succesfully