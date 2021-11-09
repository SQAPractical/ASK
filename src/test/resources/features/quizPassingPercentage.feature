Feature: Quiz Passing Percentage
  Scenario: Quiz Passing Percentage - 50% passing percentage
    When I navigate to login page
    And I type my email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Quizzes" on left menu
    And I click Create New Quiz button
    And I type quiz title "Quiz 50"
    And I click Add question button
    And I move slider to 50 percent
    And I select "Textual" question type for question 1
    And I type text "What is Quality Assurance" for question 1
    And I click Save button
    Then Quiz "Quiz 50" appears in list of quizzes
    Then I check if "50" percent appears for "Quiz 50"

  Scenario: Quiz Passing Percentage - 100% passing percentage
    When I navigate to login page
    And I type my email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Quizzes" on left menu
    And I click Create New Quiz button
    And I type quiz title "Quiz 100"
    And I click Add question button
    And I move slider to 100 percent
    And I select "Textual" question type for question 1
    And I type text "What is Quality Assurance" for question 1
    And I click Save button
    Then Quiz "Quiz 100" appears in list of quizzes
    Then I check if "100" percent appears for "Quiz 100"

