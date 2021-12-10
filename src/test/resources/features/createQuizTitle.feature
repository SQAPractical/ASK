Feature: Create Quiz -Title
  Scenario: Create Quiz - Title - Alphanumeric & Sp. characters
    When I navigate to login page
    And I type my email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    Then Message "TEACHER" appears
    And I click on "Quizzes" on left menu
    And I click Create New Quiz button
    And I type quiz title "Quiz#123"
    And I click Add question button

  Scenario: Create Quiz - Title - field is required
    When I navigate to login page
    And I type my email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    Then Message "TEACHER" appears
    And I click on "Quizzes" on left menu
    And I click Create New Quiz button
    And I click on Title of quiz
    And I type quiz title "qqqqqqqq"
    And I delete Quiz title
    And I click Add question button
    Then Message "This field is required" appears

  Scenario: Create Quiz - Title -Min 1 Characters
    When I navigate to login page
    And I type my email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    Then Message "TEACHER" appears
    And I click on "Quizzes" on left menu
    And I click Create New Quiz button
    And I type quiz title "Q"
    And I click Add question button





    