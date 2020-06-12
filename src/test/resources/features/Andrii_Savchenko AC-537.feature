Feature: AC-236 TEST SCENARIO  Multiple Choice Question - option fields

  Scenario: Verify that option fields are required (AC-345)
    Given I navigate to "login" page
    And I typed email "qa.sofi@gmail.com"
    And I typed password "12345"
    And I wait until present and click on "//span[contains(text(),'Sign In')]" object
    Then Text "Log Out" appears
    Then I wait until present and click on "//h5[contains(text(),'Quizzes')]" object
    Then I wait until present and click on "//span[contains(text(),'Create New Quiz')]" object
    Then I wait while appeared and typed "English" into "//input[@id='mat-input-2']" object
    Then I wait until present and click on "//div[@class='controls ng-star-inserted']//span[1]" object
    Then I wait until present and click on "//div[contains(text(),'Multiple-Choice')]" object
    Then I wait while appeared and typed "What is the capital of England?" into "//textarea[@id='mat-input-3']" object
    Then I wait until present and click on "//span[contains(text(),'Preview')]" object
    # Then Text "option fields are required" appears
    Then Text "This field is required" appears
    Then Sleep to human read

  Scenario: Verify that user can`t add more than 15 choices (AC-397)
    Given I navigate to "login" page
    And I typed email "qa.sofi@gmail.com"
    And I typed password "12345"
    And I wait until present and click on "//span[contains(text(),'Sign In')]" object
    Then Text "Log Out" appears
    Then I wait until present and click on "//h5[contains(text(),'Quizzes')]" object
    Then I wait until present and click on "//span[contains(text(),'Create New Quiz')]" object
    Then I wait while appeared and typed "English" into "//input[@id='mat-input-2']" object
    Then I wait until present and click on "//div[@class='controls ng-star-inserted']//span[1]" object
    Then I wait until present and click on "//div[contains(text(),'Multiple-Choice')]" object
    Then I wait while appeared and typed "What is the capital of England?" into "//textarea[@id='mat-input-3']" object
    Then I wait while appeared and typed "1" into "//textarea[@placeholder='Option 1*']" object
    Then I wait while appeared and typed "2" into "//textarea[@placeholder='Option 2*']" object
    Then I wait until present and click on "//span[contains(text(),'Add Option')]" object
    Then I wait while appeared and typed "3" into "//textarea[@placeholder='Option 3*']" object
    Then I wait until present and click on "//span[contains(text(),'Add Option')]" object
    Then I wait while appeared and typed "4" into "//textarea[@placeholder='Option 4*']" object
    Then I wait until present and click on "//span[contains(text(),'Add Option')]" object
    Then I wait while appeared and typed "5" into "//textarea[@placeholder='Option 5*']" object
    Then I wait until present and click on "//span[contains(text(),'Add Option')]" object
    Then I wait while appeared and typed "6" into "//textarea[@placeholder='Option 6*']" object
    Then I wait until present and click on "//span[contains(text(),'Add Option')]" object
    Then I wait while appeared and typed "7" into "//textarea[@placeholder='Option 7*']" object
    Then I wait until present and click on "//span[contains(text(),'Add Option')]" object
    Then I wait while appeared and typed "8" into "//textarea[@placeholder='Option 8*']" object
    Then I wait until present and click on "//span[contains(text(),'Add Option')]" object
    Then I wait while appeared and typed "9" into "//textarea[@placeholder='Option 9*']" object
    Then I wait until present and click on "//span[contains(text(),'Add Option')]" object
    Then I wait while appeared and typed "10" into "//textarea[@placeholder='Option 10*']" object
    Then I wait until present and click on "//span[contains(text(),'Add Option')]" object
    Then I wait while appeared and typed "11" into "//textarea[@placeholder='Option 11*']" object
    Then I wait until present and click on "//span[contains(text(),'Add Option')]" object
    Then I wait while appeared and typed "12" into "//textarea[@placeholder='Option 12*']" object
    Then I wait until present and click on "//span[contains(text(),'Add Option')]" object
    Then I wait while appeared and typed "13" into "//textarea[@placeholder='Option 13*']" object
    Then I wait until present and click on "//span[contains(text(),'Add Option')]" object
    Then I wait while appeared and typed "14" into "//textarea[@placeholder='Option 14*']" object
    Then I wait until present and click on "//span[contains(text(),'Add Option')]" object
    Then I wait while appeared and typed "15" into "//textarea[@placeholder='Option 15*']" object
    Then I wait until present and click on "//span[contains(text(),'Add Option')]" object
    Then I wait while appeared and typed "16" into "//textarea[@placeholder='Option 16*']" object
    Then I wait until present and click on "//span[contains(text(),'Add Option')]" object
    Then I wait while appeared and typed "17" into "//textarea[@placeholder='Option 17*']" object
    Then I wait until present and click on "//textarea[@placeholder='Option 1*']/../../../../..//input[@type='checkbox']/.." object
    Then I wait until present and click on "//span[contains(text(),'Preview')]" object
    Then Text "option fields don`t allow more than 15 choice" appears
    Then Sleep to human read

  Scenario: Verify that to Choose at least one correct answer is required (AC-398)
    Given I navigate to "login" page
    And I typed email "qa.sofi@gmail.com"
    And I typed password "12345"
    And I wait until present and click on "//span[contains(text(),'Sign In')]" object
    Then Text "Log Out" appears
    Then I wait until present and click on "//h5[contains(text(),'Quizzes')]" object
    Then I wait until present and click on "//span[contains(text(),'Create New Quiz')]" object
    Then I wait while appeared and typed "English" into "//input[@id='mat-input-2']" object
    Then I wait until present and click on "//div[@class='controls ng-star-inserted']//span[1]" object
    Then I wait until present and click on "//div[contains(text(),'Multiple-Choice')]" object
    Then I wait while appeared and typed "What is the capital of England?" into "//textarea[@id='mat-input-3']" object
    Then I wait while appeared and typed "1" into "//textarea[@placeholder='Option 1*']" object
    Then I wait while appeared and typed "2" into "//textarea[@placeholder='Option 2*']" object

   # Absolute XPATH
    # Then I wait until present and click on "/html/body/ac-root/mat-sidenav-container/mat-sidenav-content/main/ac-quiz-builder-page/form/main/mat-accordion/mat-expansion-panel/div/div/ac-question-body-form/div/div[2]/div/div[1]/mat-checkbox/label/div" object
      # Reletive wrong XPATH
    # Then I wait until present and click on "//textarea[@placeholder='Option 1*']/../../../../..//input[@type='checkbox']" object
      #Sofia's XPATH
    #Then I wait until present and click on "//*[contains(text(),'Q1')]/../../..//*[@placeholder='Option 1*']/../../../../..//*[contains(@class, 'mat-checkbox-inner-container')]" object
    Then I wait until present and click on "//textarea[@placeholder='Option 1*']/../../../../..//input[@type='checkbox']/.." object
    Then I wait until present and click on "//span[contains(text(),'Preview')]" object
    Then Text "PREVIEW MODE" appears
    Then Sleep to human read

  Scenario: Verify that user has to choose at least one correct answer (AC-399)
    Given I navigate to "login" page
    And I typed email "qa.sofi@gmail.com"
    And I typed password "12345"
    And I wait until present and click on "//span[contains(text(),'Sign In')]" object
    Then Text "Log Out" appears
    Then I wait until present and click on "//h5[contains(text(),'Quizzes')]" object
    Then I wait until present and click on "//span[contains(text(),'Create New Quiz')]" object
    Then I wait while appeared and typed "English" into "//input[@id='mat-input-2']" object
    Then I wait until present and click on "//div[@class='controls ng-star-inserted']//span[1]" object
    Then I wait until present and click on "//div[contains(text(),'Multiple-Choice')]" object
    Then I wait while appeared and typed "What is the capital of England?" into "//textarea[@id='mat-input-3']" object
    Then I wait while appeared and typed "1" into "//textarea[@placeholder='Option 1*']" object
    Then I wait while appeared and typed "2" into "//textarea[@placeholder='Option 2*']" object
    Then I wait until present and click on "//span[contains(text(),'Preview')]" object
    Then Text "*Choose at least one correct answer" appears
    Then Sleep to human read

  Scenario: Verify that "Other" text area option is available (AC-400)
    Given I navigate to "login" page
    And I typed email "qa.sofi@gmail.com"
    And I typed password "12345"
    And I wait until present and click on "//span[contains(text(),'Sign In')]" object
    Then Text "Log Out" appears
    Then I wait until present and click on "//h5[contains(text(),'Quizzes')]" object
    Then I wait until present and click on "//span[contains(text(),'Create New Quiz')]" object
    Then I wait while appeared and typed "English" into "//input[@id='mat-input-2']" object
    Then I wait until present and click on "//div[@class='controls ng-star-inserted']//span[1]" object
    Then I wait until present and click on "//div[contains(text(),'Multiple-Choice')]" object
    Then I wait while appeared and typed "What is the capital of England?" into "//textarea[@id='mat-input-3']" object
    Then I wait while appeared and typed "1" into "//textarea[@placeholder='Option 1*']" object
    Then I wait while appeared and typed "2" into "//textarea[@placeholder='Option 2*']" object
    Then I wait until present and click on "//textarea[@placeholder='Option 1*']/../../../../..//input[@type='checkbox']/.." object
    Then I wait until present and click on "//span[contains(text(),'Other')]/../..//div[@class='mat-checkbox-inner-container']" object

    Then I wait until present and click on "//span[contains(text(),'Preview')]" object
    Then Object "//textarea[@placeholder='Other']" with placeholder "Other" appears
    Then Sleep to human read
