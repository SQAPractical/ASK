Feature: Quiz Updated At
  Scenario: Verify that the date and time are displayed correctly when updating a quiz
    Given I open url "http://ask-stage.portnov.com/#/login"
    When I type email "qa.sofi@gmail.com" on login page
    And I type password "12345" on login page
    And I click Sign in button
    Then Text "Sofia Teacher" appears
    Then I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    Then I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
    Then I type "TestQuiz11" into element with xpath "//input[@placeholder='Title Of The Quiz *']"
    And I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
    Then I click on element with xpath "//*[contains(text(),'Textual')]"
    Then I type "Tell me about yourself" into element with xpath "//*[@placeholder='Question *']"
    Then I click on element with xpath "//span[contains(text(),'Save')]"
    Then I click on element just created by me
    Then I click on element with xpath "//mat-panel-title[contains(text(),'TestQuiz11')]/parent::span/parent::mat-expansion-panel-header//following-sibling::div//div//div//div//a//button"
    And I note down the current Date and Time
    Then I click on element with xpath "//span[contains(text(),'Save')]"
    Then I click on element just created by me
    Then Updated At: DateTime match with noted down



