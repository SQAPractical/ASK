#Lada
Feature: Multiple Choice Question - Options
  Scenario: Multiple Choice Question - 1 Options
    Given I open url page
    Then I type email on login page "lada.idy@gmail.com"
    Then I type password on login page "11111"
    When I click on button
    Then I wait for element with xpath "//*[@class='ng-star-inserted']" to be Present
    When I click on element "//div//*[text()='Quizzes']"
    Then I wait for element with xpath "//ac-quizzes-list[@class='ng-star-inserted']" to be Present
    Then I click on element "//span[contains(text(),'Create New Quiz')]"
    Then I wait for element with xpath "//input[@formcontrolname='name']" to be Present
    Then I type "Question" into element "//input[@formcontrolname='name']"
    Then I click on element "//div[@class='controls ng-star-inserted']//span[1]"
    Then I click on element "//div[contains(text(),'Multiple-Choice')]"
    And element with xpath "//div[contains(text(),'Multiple-Choice')]" should be select
 #   Then element with xpath "//div[contains(text(),'Points per question')]/..//h2" should contain text "3"
#    Then I type "ASD" into element with xpath "//*[contains(@placeholder, 'Option 1')]"
#    Then element with xpath "//*[contains(@placeholder, 'Option 1')]" should contain attribute "value" as "ASD"
#    Then I click on element "//div[@class='form-controls-container ng-star-inserted']//button[2]"
#    Then I wait for element with xpath "//snack-bar-container" to be Present
#
#
#   Scenario: Multiple Choice Question - 2 Options
#    Given I open url page
#    Then I type email on login page "lada.idy@gmail.com"
#    Then I type password on login page "11111"
#    When I click on button
#    Then I wait for element with xpath "//*[@class='ng-star-inserted']" to be Present
#    When I click on element "//div//*[text()='Quizzes']"
#    Then I wait for element with xpath "//ac-quizzes-list[@class='ng-star-inserted']" to be Present
#    Then I click on element "//span[contains(text(),'Create New Quiz')]"
#    Then I wait for element with xpath "//input[@formcontrolname='name']" to be Present
#    Then I type "Question" into element "//input[@formcontrolname='name']"
#    Then I click on element "//div[@class='controls ng-star-inserted']//span[1]"
#    Then I click on element "//div[contains(text(),'Multiple-Choice')]"
#    And element with xpath "//div[contains(text(),'Multiple-Choice')]" should be select
# #   Then element with xpath "//div[contains(text(),'Points per question')]/..//h2" should contain text "3"
#    Then I type "Quiz" into element "//*[@formcontrolname='question']"
#    Then I type "ASD" into element with xpath "//*[contains(@placeholder, 'Option 1')]"
#    Then element with xpath "//*[contains(@placeholder, 'Option 1')]" should contain attribute "value" as "ASD"
#    Then I click on element "//*[@id='mat-checkbox-2']"
#    And element with xpath "//*[@id='mat-checkbox-2']" should be select
#    Then I type "BNM" into element with xpath "//*[contains(@placeholder, 'Option 2')]"
#    And element with xpath "//*[contains(@placeholder, 'Option 2')]" should contain attribute "value" as "BNM"
#    Then I click on element "//*[@id='mat-checkbox-3']"
#    And element with xpath "//*[@id='mat-checkbox-3']" should be select
#    Then I click on element "//div[@class='form-controls-container ng-star-inserted']//button[2]"
#    Then I wait for element with xpath "//*[contains(text(),'List of Quizzes')]" to be Present
#



    
    



