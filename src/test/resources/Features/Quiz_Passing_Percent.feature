Feature:  Quiz-Passing Percentage

  Scenario: Quiz -Teacher- Passing Percentage is displayed correctly
    Given I open "login" page
    When I type email "qa.sofi@gmail.com" on login page
    And I type password "12345" on login page
    And I click Sign in button
    Then Text "TEACHER" appears
    When I click Quizzes button
    And Text "List of Quizzes" appears
    When I click button Create New Quiz
    And Text "Title Of The Quiz *" appears
    Then I click button Title of the quiz
    And I type Name of the quiz "T1-Testing Quizzes"
    Then Button add question appears
    And I click add question button
    And Button add question appears
    Then I click on radio button for textual question
    And Text "Question *" appears
    Then I click Question field
    And I type Name of the question "What is Testing?"
    Then I click Show-Stopper checkbox
    Then I increase passing percent
    Then I click Save button
    Then I choose quiz that I created
    And I check percent rate is equal to "80"

  Scenario: Quiz-Teacher- Updated Passing Percentage is displayed correctly
    Given I open "login" page
    When I type email "qa.sofi@gmail.com" on login page
    And I type password "12345" on login page
    And I click Sign in button
    Then Text "TEACHER" appears
    When I click Quizzes button
    And Text "List of Quizzes" appears
    Then I choose quiz that I created
    And I click Edit button by Quiz id "23929"
    Then Text "Passing Rate" appears
    Then I decrease passing rate
    Then I click Save button
    Then I choose quiz that I created
    And I click Edit button by Quiz id "23929"
    And I check percent rate inside of quiz is equal to "50%"
    Then I click Save button
    Then I choose quiz that I created