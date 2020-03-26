Feature: Single Choice Question - Text

  Scenario: fill the field with Alphanumeric & Sp. characters
    Given I navigate to login page
    When I type email "vpmawork@gmail.com"
    And I type password "12345"
    And I click "Sign In" button
    Then I should see page title contains "Assessment Control"
    When I click on menu item "//a[contains(@href,'quizzes')]"
    Then I wait for element with xpath "//*[contains(text(),'List of Quizzes')]" to be present
    Then element with xpath "//*[contains(text(),'List of Quizzes')]" should be displayed
    When I click "Create New Quiz" button
    Then I wait for element with xpath "//input[@formcontrolname='name']" to be present
    When I type "ABC" into element with xpath "//input[@formcontrolname='name']"
#    And I click "Add Question" button
    And I click on element with xpath "//*[text()='add_circle']"
 #   Then I wait for element with xpath "//*[contains(text(),'Single-Choice')]" to be present
    And I click on menu item "//*[contains(text(),'Single-Choice')]"
    And I type question "Are you happy?"
    And I click on menu item "//textarea[@placeholder='Option 1*']/../../../../..//input"
 # //textarea[@placeholder='Option 1*']/../../../../..//label/input  //input[contains(@name,'mat-radio-group')]   //div[@class='right']//input[@type='radio']
    And I type optionOne "Yes"
    And I type optionTwo "1234ABCD&&"
    And I click "Save" button
    Then I wait for 15 sec







