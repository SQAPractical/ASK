Feature: test suit for total questions in the quiz
  @Smoke
  Scenario: Create a quiz with 5 questions
    Given I navigate to "login" page
    When I type email "teacher1@gmail.com"
    And I type password "12345"
    And I click Sign In button
    Then I click on "Quizzes" menu item
    When I click on Create New Quiz button
    And I type title "Title - Quiz with 5 questions" of the quiz
    And I add 5 "Textual" questions starting with question 1 "What is the meaning of life?"
    And I click on "Save" button
    Then I find a quiz with title "Title - Quiz with 5 questions" from the list of quizzes and click on it
    And I verify total number of questions is "5" in the quiz with title "Title - Quiz with 5 questions"
    And I delete a quiz with title "Title - Quiz with 5 questions"

  Scenario: Verify quiz has to have at least one question
    Given I navigate to "login" page
    When I type email "teacher1@gmail.com"
    And I type password "12345"
    And I click Sign In button
    Then I click on "Quizzes" menu item
    When I click on Create New Quiz button
    And I type title "Title - Quiz with 1 questions" of the quiz
    And I click on Add Question button
    And I click on "Save" button
    Then I verify error message "Quiz is not completed." appears

  Scenario: Create quiz with 50 questions
    Given I navigate to "login" page
    When I type email "teacher1@gmail.com"
    And I type password "12345"
    And I click Sign In button
    Then I click on "Quizzes" menu item
    When I click on Create New Quiz button
    And I type title "Title - Quiz with 50 questions" of the quiz
    And I add 50 "Textual" questions starting with question 1 "What is the meaning of life?"
    And I click on "Save" button
    Then I find a quiz with title "Title - Quiz with 50 questions" from the list of quizzes and click on it
    And I verify total number of questions is "50" in the quiz with title "Title - Quiz with 50 questions"
    And I delete a quiz with title "Title - Quiz with 50 questions"

  Scenario: Verify quiz has to have maximum 50 questions
    Given I navigate to "login" page
    When I type email "teacher1@gmail.com"
    And I type password "12345"
    And I click Sign In button
    Then I click on "Quizzes" menu item
    When I click on Create New Quiz button
    And I type title "Title - Quiz with 51 questions" of the quiz
    And I add 51 "Textual" questions starting with question 1 "What is the meaning of life?"
    And I click on "Save" button
    Then I verify error message "Maximum 50 questions allowed" appears










