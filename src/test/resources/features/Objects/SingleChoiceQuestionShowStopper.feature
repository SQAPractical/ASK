Feature: Single-choice Question - Show-Stopper

  Scenario: Single-choice Question - Show-Stopper
    Given I open login page
    And I type email "teacher@mailinator.com" to the element with xpath "//input[@formcontrolname='email']"
    And I type password "12345" to the element with xpath "//input[@formcontrolname='password']"
    And I click Sign in button

#    Select "Quizzes" from the menu ==> Click on "Create New Quiz" button
    And I click to the element with xpath "//*[contains(@href,'quizzes')]"
    And I click to the element with xpath "//span[contains(text(),'Create New Quiz')]/../../button"
    And I wait for 2 sec
    Then element with xpath "//*[@placeholder='Title Of The Quiz *']" should be displayed

#    Enter the quiz name in the field. ===> Title of the quiz: ..... ===> Scenario  Click on "Add Question"
    When I type text "AAATest I click to the element with xpath" to the element with xpath "//*[@placeholder='Title Of The Quiz *']"
    And I click to the element with xpath "//mat-icon[text()='add_circle']/../.."
    Then element with xpath "//div[contains(text(),'Single-Choice')]" should be presented

#    Click on "Single-Choice" radio button
    When I click to the element with xpath "//div[contains(text(),'Single-Choice')]/.."
#    Fill in the fields
    And I type text "What is quality?" to the element with xpath "//*[@placeholder='Question *']"
    And I type text "Customer satisfaction" to the element with xpath "//*[@placeholder='Option 1*']"
    And I type text "Developers' satisfaction" to the element with xpath "//*[@placeholder='Option 2*']"

#    Check the box Is "Show-Stopper" question?
    When I click to the element with xpath "//*[contains(text(),'Show-Stopper')]/../.."
#    Click on the radio button by Option 1 to select correct answer
    And I click to the element with xpath "//*[@placeholder='Option 1*']/../../../../../mat-radio-button/label"
#    Click on "Save" button
    And I click to the element with xpath "//*[contains(text(),'Save')]/.."

#    Select Quiz from list and click "Preview"
    When I click to the element with xpath "//*[contains(text(),'AAATest I click to the element with xpath')]"
    When I click to the element with xpath "//*[contains(text(),'AAATest I click to the element with xpath')]/../../..//button//span[text()='Preview']/.."
#    Question has label "Show-Stopper Question"
    Then element with xpath "//*[contains(@class,'show-stopper')]" should be displayed

