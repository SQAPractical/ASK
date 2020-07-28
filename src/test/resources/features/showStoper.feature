Feature: ShowStoper
  Scenario: Single Choice Question - Show-Stopper
    Given  I open "login" page
    When I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign in button
    Then Text "Sofia Teacher" appears
    And I click Quizzes link
    Then Text "List of Quizzes" appears
    And I click Create New Quiz button
    Then Text "Title Of The Quiz *" appears
    And I type title of the quiz "Test_Tamara"
    And I click Add Question button
    Then Text "Single-Choice" appears
    And I click on element using JavaScript with xpath "//div[contains(text(),'Single')]/..//*[@class='mat-radio-outer-circle']"
    And I fill out question name "Q_1"
    And I fill out Option one with "A"
    And I fill out Option two with "B"
    And I click on element using JavaScript with xpath "//textarea[@placeholder='Option 1*']/../../../../..//div[@class='mat-radio-outer-circle']"
    And I click on element using JavaScript with xpath "//mat-checkbox[@id='mat-checkbox-2']//div[@class='mat-checkbox-inner-container']"
    And I click Save button

    And I click on element using JavaScript with xpath "//mat-panel-title[contains(text(),'Test_Tamara')]"
    And I click on element with xpath "//mat-panel-title[contains(text(),'Test_Tamara')]/../../..//*[contains (text(),'Preview')]"
    Then Text "Show-Stopper Question" appears
    And I click on Close button on PREVIEW MODE
    And I click on element with xpath "//mat-panel-title[contains(text(),'Test_Tamara')]/../../..//*[contains (text(),'Delete')]"
    And I delete quiz "Test_Tamara"
    


