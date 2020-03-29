Feature: Single Choice Question - Text

  Scenario: Single Choice Question - Text - fill the field with Alphanumeric & Sp. characters
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
    And I click on element with xpath "//*[text()='add_circle']"
 #   Then I wait for element with xpath "//*[contains(text(),'Single-Choice')]" to be present
    And I click on menu item "//*[contains(text(),'Single-Choice')]"
    And I type question "Are you happy?"
    And I click on menu item "//div[@class='right']//mat-radio-group[1]//mat-radio-button"
#  ----------------  all possible Xpath for radio buttons  -------------------------:
#  //mat-panel-title[contains(text(),'Q1')]/../../..//div[@class='right']//mat-radio-group[1]//mat-radio-button
#  //mat-panel-title[contains(text(),'Q1')]/../../..//div[@class='left']//mat-radio-group//mat-radio-button//*[contains(text(),'Textual')]
#  //div[@class='right']//mat-radio-group[1]//label[@class='mat-radio-label']
#  //*[@placeholder='Option 1*']/../../../../..//div[@class='mat-radio-inner-circle']
#  //*[@placeholder='Option 1*']/../../../../..//div[@class='mat-radio-outer-circle']
 # Not clickable://textarea[@placeholder='Option 1*']/../../../../..//label/input
#  Has 2 elements: //input[contains(@id,'mat-radio-')]   //div[@class='right']//input[@type='radio']
#  For points: //div[contains(text(),'Points per question')]/..//h2[1] getDriver().findElement(By.xpath("//div[contains(text(),'Points per question')]/..//h2")).sendKeys(points);
#  //div[@class='right']//mat-radio-group[1]//mat-radio-button
#  ---------------------------------------------------------------------------------*
    And I type optionOne "Yes"
    And I type optionTwo "1234ABCD&&"
 #   ----------------Experiment:
 #   And I click on menu item "//h2"
#   ??? //mat-slider[1] - индекс не работает для h, radio-button, etc.
#    Then element with xpath "//div[contains(text(),'Points per question')]/..//h2" should have attribute "value" as "3"
 #   And I set "9" points per question "//h2" //div[@class='wrapper']//div[@class='mat-slider-thumb-container']
 #   And I set "9" points per question "//*[contains(text(),'Q1')]"
 #  Then I wait for 10 sec
 # ---------------------------------------------------------------------------------*
    And I click "Save" button
 # ??? Then message "Saving" appears
    Then I wait for element with xpath "//*[contains(text(),'List of Quizzes')]" to be present
 #   Then I wait for 5 sec

  Scenario: Single-Choice Question - Text - The field is required
    Given I navigate to login page
    When I type email "vpmawork@gmail.com"
    And I type password "12345"
    And I click "Sign In" button
    Then I should see page title contains "Assessment Control"
    When I click on menu item "//a[contains(@href,'quizzes')]"
    Then I wait for element with xpath "//*[contains(text(),'List of Quizzes')]" to be present
    When I click "Create New Quiz" button
    Then I wait for element with xpath "//input[@formcontrolname='name']" to be present
    When I type "Single-Choice Question - Text - The field is required" into element with xpath "//input[@formcontrolname='name']"
    And I add new question
    And I click on menu item "//*[contains(text(),'Single-Choice')]"
    And I type question "Are you happy?"
    And I choose First answer as right
    And I type optionOne "Yes"
    And I click "Save" button
    Then Required field "//*[contains(text(),'Option 2')]/../../../..//*[contains(text(),'This field is required')]" id displayed
    Then Required field "//simple-snack-bar[contains(text(),'Quiz is not completed. Check highlighted with')]" id displayed
    Then I wait for 3 sec

  Scenario Outline: Single-Choice Question - Text - Verification of Min/Max Characters
    Given I navigate to login page
    When I type email <email>
    And I type password <password>
    And I click <buttonSignIn> button
    Then I should see page title contains <pageTitle>
    When I click on menu item <xpathMenu>
    Then I wait for element with xpath <xpathList> to be present
    When I click <buttonNewQuiz> button
    Then I wait for element with xpath <xpathName> to be present
    When I type <textToPut> into element with xpath <xpathName>
    And I add new question
    And I click on menu item <xpathSingle>
    And I type question <questionText>
    And I choose First answer as right
    And I type optionOne <option1>
    And I type optionTwo <option2>
    And I wait for 3 sec
    And I click <buttonSave> button
    Then I wait for element with xpath <xpathList> to be present
    Examples:
      | email                    | password | buttonSignIn | pageTitle            | xpathMenu                         | xpathList                                | buttonNewQuiz   |xpathName                          |textToPut                                          | xpathSingle                            | questionText    |option1|option2 |buttonSave|
      | "vpmawork@gmail.com" | "12345"  | "Sign In"     | "Assessment Control" | "//a[contains(@href,'quizzes')]" | "//*[contains(text(),'List of Quizzes')]"| "Create New Quiz" |"//input[@formcontrolname='name']" | "Single-Choice Question - Text - Min 1 Character" |"//*[contains(text(),'Single-Choice')]" |"Are you happy?" |"Yes"  | "Q"    | "Save"|
      | "vpmawork@gmail.com" | "12345"  | "Sign In"     | "Assessment Control" | "//a[contains(@href,'quizzes')]" | "//*[contains(text(),'List of Quizzes')]"| "Create New Quiz" |"//input[@formcontrolname='name']" |"Single-Choice Question - Text - 1000 Characters"  | "//*[contains(text(),'Single-Choice')]"|"Are you happy?" |"Yes"  | "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"    |"Save"|
      | "vpmawork@gmail.com" | "12345"  | "Sign In"     | "Assessment Control" | "//a[contains(@href,'quizzes')]" | "//*[contains(text(),'List of Quizzes')]"| "Create New Quiz" |"//input[@formcontrolname='name']" |"Single-Choice Question - Text - 1000+1 Characters"|"//*[contains(text(),'Single-Choice')]" |"Are you happy?" |"Yes"  | "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa1"    |"Save"|








