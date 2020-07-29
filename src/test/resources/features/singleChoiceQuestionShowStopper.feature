Feature: Single Choice Question - Show-Stopper
  Scenario: Single Choice Question - Show-Stopper
    Given  I open "login" page
    When I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign in button
    Then Text "Sofia Teacher" appears
    And I click Quizzes in the left menu
    Then Text "List of Quizzes" appears
    And I click Create New Quiz button
    Then Text "Title Of The Quiz *" appears
    And I type "Test_Tamara" in Title Of The Quiz *
    And I click Add Question button
    Then Text "Single-Choice" appears
    And I click Single-Choice radio button
    And I type "Q_1 " in Question *
    And I type "A" in Option one
    And I type "B" in Option two
    And I click on element using JavaScript with xpath "//textarea[@placeholder='Option 1*']/../../../../..//div[@class='mat-radio-outer-circle']"
    And I click on element using JavaScript with xpath "//mat-checkbox[@id='mat-checkbox-2']//div[@class='mat-checkbox-inner-container']"
    And I click Save button
    And I click on element using JavaScript with xpath "//mat-panel-title[contains(text(),'Test_Tamara')]"
    And I click on element with xpath "//mat-panel-title[contains(text(),'Test_Tamara')]/../../..//*[contains (text(),'Preview')]"
    Then Text "Show-Stopper Question" appears
    And I click close button
    And I delete quiz "Test_Tamara"
    


