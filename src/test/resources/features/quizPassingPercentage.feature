Feature: Quiz - Passing Percentage
  Scenario: Quiz - Passing Percentage - 0%
    When I navigate to login page
    Then I type email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    When Element with text "Log Out" is displayed on home page
    Then I navigate to quizzes page
    When Element with text "Create New Quiz" is displayed on quizzes page
    Then I click on Create New Quiz button
    When Element with text "Back To Quizzes List" is displayed on quiz page
    Then I type Title Of The Quiz "12345"
    And I click Add Question button
    And I click Single Choice radio button
    And I type question name "1+1"
    And I type first option "1"
    And I type second option "2"
    And I set correct answer as option two
    And I set passing rate slider to 0
    And I click save button
    When Element with text "Create New Quiz" is displayed on quizzes page
    Then The created quiz appears with name "12345" and passing rate "0"

  Scenario: Quiz - Passing Percentage - 55%
    When I navigate to login page
    Then I type email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    When Element with text "Log Out" is displayed on home page
    Then I navigate to quizzes page
    When Element with text "Create New Quiz" is displayed on quizzes page
    Then I click on Create New Quiz button
    When Element with text "Back To Quizzes List" is displayed on quiz page
    Then I type Title Of The Quiz "12345"
    And I click Add Question button
    And I click Single Choice radio button
    And I type question name "1+1"
    And I type first option "1"
    And I type second option "2"
    And I set correct answer as option two
    And I set passing rate slider to 55
    And I click save button
    When Element with text "Create New Quiz" is displayed on quizzes page
    Then The created quiz appears with name "12345" and passing rate "55"

  Scenario: Quiz - Passing Percentage - 100%
    When I navigate to login page
    Then I type email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    When Element with text "Log Out" is displayed on home page
    Then I navigate to quizzes page
    When Element with text "Create New Quiz" is displayed on quizzes page
    Then I click on Create New Quiz button
    When Element with text "Back To Quizzes List" is displayed on quiz page
    Then I type Title Of The Quiz "12345"
    And I click Add Question button
    And I click Single Choice radio button
    And I type question name "1+1"
    And I type first option "1"
    And I type second option "2"
    And I set correct answer as option two
    And I set passing rate slider to 100
    And I click save button
    When Element with text "Create New Quiz" is displayed on quizzes page
    Then The created quiz appears with name "12345" and passing rate "100"