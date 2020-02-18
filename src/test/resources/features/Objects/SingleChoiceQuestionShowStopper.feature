Feature: Single-choice Question - Show-Stopper

  @Smoke
  Scenario: Single-choice Question - Show-Stopper
    Given I open login page
    And I type teacher_email "teacher@mailinator.com" to the email_element
    And I type password "12345" to the login_passw_element
    And I click Sign in button
    And I wait for 4 sec

    And I click to the quizzes_menu_element
    And I wait for 4 sec
    And I click to the create_quiz_element
    And I wait for 2 sec
    Then titile_quiz_element should be displayed

    When I type text "AAATest A7" to the titile_quiz_element
    And I click to the add_quist_element
    Then single_choice_element should be presented

#    Click on "Single-Choice" radio button, Fill in the fields
    When I click to the single_choice_element
    And I type text "What is quality?" to the titile_quiest_element
    And I type text "Customer satisfaction" to the first_radio_quest_element
    And I type text "Developers' satisfaction" to the second_radio_quest_element

#    Check the box Is "Show-Stopper" question?, Click on the radio button by Option 1 to select correct answer, Click on "Save" button
    When I click to the show_stopper_quest_el
    And I click to the first_radio_elem
    And I click to the save_quiz_element
    And I wait for 2 sec

#    Select Quiz from list and click "Preview", Question has label "Show-Stopper Question"
    When I click to the choosing_quiz_element with title "AAATest A7"
    And I click to the preview_quiz_element with title "AAATest A7"
    Then show_stop_element should be displayed

#    And I type password "12345" to the element with xpath "//input[@formcontrolname='password']"

#    Select "Quizzes" from the menu ==> Click on "Create New Quiz" button
#    And I click to the element with xpath "//*[contains(@href,'quizzes')]"
#    And I click to the element with xpath "//span[contains(text(),'Create New Quiz')]/../../button"
#    Then element with xpath "//*[@placeholder='Title Of The Quiz *']" should be displayed

#    Enter the quiz name in the field. ===> Title of the quiz: ..... ===> Scenario  Click on "Add Question"
#    When I type text "AAATest I click to the element with xpath" to the element with xpath "//*[@placeholder='Title Of The Quiz *']"
#    And I click to the element with xpath "//mat-icon[text()='add_circle']/../.."
#    Then element with xpath "//div[contains(text(),'Single-Choice')]" should be presented

#    Click on "Single-Choice" radio button
#    When I click to the element with xpath "//div[contains(text(),'Single-Choice')]/.."
#    Fill in the fields
#    And I type text "What is quality?" to the element with xpath "//*[@placeholder='Question *']"
#    And I type text "Customer satisfaction" to the element with xpath "//*[@placeholder='Option 1*']"
#    And I type text "Developers' satisfaction" to the element with xpath "//*[@placeholder='Option 2*']"

##    Check the box Is "Show-Stopper" question?
#    When I click to the element with xpath "//*[contains(text(),'Show-Stopper')]/../.."
##    Click on the radio button by Option 1 to select correct answer
#    And I click to the element with xpath "//*[@placeholder='Option 1*']/../../../../../mat-radio-button/label"
##    Click on "Save" button
#    And I click to the element with xpath "//*[contains(text(),'Save')]/.."

##    Select Quiz from list and click "Preview"
#    When I click to the element with xpath "//*[contains(text(),'AAATest I click to the element with xpath')]"
#    When I click to the element with xpath "//*[contains(text(),'AAATest I click to the element with xpath')]/../../..//button//span[text()='Preview']/.."
##    Question has label "Show-Stopper Question"
#    Then element with xpath "//*[contains(@class,'show-stopper')]" should be displayed

