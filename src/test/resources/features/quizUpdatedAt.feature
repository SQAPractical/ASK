@fullRegression
Feature: Quiz - Updated At
  @Smoke
  Scenario: Updated at Same Time as Created At
    Given I navigate to staging webpage
    When I login with teacher credentials
    And I navigate to Quiz page
    And I Create new quiz
    And I Create Title for quiz "test quiz r784"
    And I add question to the quiz
    And I select textual type of question
    And I add text "test text" to the question
    And I save quiz
    And I find "test quiz r784" in list of quizzes
    Then Time on Updated At for "test quiz r784" matches Created At
  @Smoke
  Scenario: Updated at Different with Created At
    Given I navigate to staging webpage
    When I login with teacher credentials
    And I navigate to Quiz page
    And I find "test quiz r784" in list of quizzes
    Then Time on Updated At for "test quiz r784" matches Created At
    When I click on edit "test quiz r784"
    And I modify text of Question 1
    And I save quiz
    And I find "test quiz r784" in list of quizzes
    Then Time on Updated At for "test quiz r784" do not match current time


