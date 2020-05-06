Feature: Teacher Creates Quiz with 5 Multiple-Choice questions
  Scenario: Teacher Creates Quiz with 5 Multiple-Choice questions
    Given I open login page
    When I type email "vctv1023@gmail.com"
    And I type password "12345"
    And I click Sign in button
    Then I wait some minutes
    When I click on "Quizzes" on the left menu
    Then I wait some minutes
    And I click on "Create New Quiz" button
    Then I wait some minutes
    When I type "Nhung Question" in the "Title Of The Quiz *" field
    And I click on Add Question button
    Then I wait some minutes
    When I add 5 questions "Multiple-Choice"
    Then I wait some minutes
    Then "Nhung Question" will be displayed at List of Quizzes page
    When I click on "Nhung Question" that I have just created
    And I click on "Delete" button of "Nhung Question" question
    And "Confirmation" popup appears
    Then I wait some minutes
    When I click on "Delete" on "Confirmation" popup
    Then I wait some minutes
    Then "Nhung Question" is deleted succesfully

