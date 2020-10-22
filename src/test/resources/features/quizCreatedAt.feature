#Created by Almir 10/19/20
@fullregression
Feature: Quiz - Created at
  @Smoke
  Scenario: Verify "Created At: date/time" displayed correctly
    Given I open "login" page
    When I type email "qa.sofi@gmail.com" on login page
    And I type password "12345" on login page
    And I click Sign in button
    And I click quizzes on left menu
    And I click on Create New Quiz at the bottom of the page
    And I type "My quiz for regression test01" in Title Of The Quiz field
    And I click Add Question underneath the Title
    And I select Question type: Textual
    And I select Points per question: "9"
    And I type the question "What are we doing here?" in to Question field
    And I note down the current DateTime
    And I click SAVE on the bottom right corner
    And I click on created quiz "My quiz for regression test01" from the Quiz List
    Then Created At: DateTime match with noted down



