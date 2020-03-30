Feature: Assignments - Graded by

  Scenario: Assignments - Graded by Auto -create quiz with a single-choice
    Given I open ask-stage.portnov login page
    And I type an email "casio7@meta.ua"
    And I type the password "12345"
    And I click on the "//button[@class='mat-raised-button mat-primary']" button
    Then I should see page title as "Assessment Control @ Portnov"
   #TEACHER IS SIGN IN
    And I wait for 2 seconds
    And I click on the "//h5[contains(text(),'Quizzes')]" button
    And I click on the "//div[@class='controls']//button[@class='mat-raised-button mat-primary']" button
    And I wait for 2 seconds
    And I type text "Quiz graded Auto with  a single-choice" into xPath "//*[@placeholder='Title Of The Quiz *']"
    And I wait for 2 seconds
    And I click on the "//div[@class='controls ng-star-inserted']//span[1]" button
    And I click on the "//div[contains(text(),'Single-Choice')]" button
    And I type text "What is Quality?" into xPath "//*[@class='mat-input-element mat-form-field-autofill-control mat-autosize ng-untouched ng-pristine ng-invalid']"
    And I type text "A" into xPath "//div[@class='right']//mat-radio-group[1]//textarea[@placeholder='Option 1*']"
    And I type text "B" into xPath "//div[@class='right']//mat-radio-group[2]//textarea[@placeholder='Option 2*']"
    And I click on the "//button[@class='mat-raised-button mat-accent']" button
    And I type text "C" into xPath "//div[@class='right']//mat-radio-group[3]//textarea[@placeholder='Option 3*']"
    And I click on the "//button[@class='mat-raised-button mat-accent']" button
    And I type text "D" into xPath "//div[@class='right']//mat-radio-group[4]//textarea[@placeholder='Option 4*']"
    And I click on the "//div[@class='right']//mat-radio-group[1]//label[@class='mat-radio-label']" button
    And I click on the "//div[@class='form-controls-container ng-star-inserted']//button[2]" button
   #QUIZ WAS CREATED
    And I click on the "//h5[contains(text(),'Assignments')]" button
    And I click on the "//button[@class='mat-raised-button mat-primary']" button
    And I click on the "//div[2]/mat-form-field[1]/div/div[1]/div" button
    And I click on the "//span[@class='mat-option-text'][contains(text(),'404!')]" button
    And I click on the "//div[2]/mat-form-field[2]/div/div[1]/div" button
    And I click on the "//span[@class='mat-option-text'][contains(text(),'multiple-choice')]" button
    And I click on the "//mat-selection-list[@class='mat-selection-list ng-untouched ng-pristine ng-invalid']//div[2]" button
    And I click on the "//span[contains(text(),'Give Assignment')]" button
   #ASSIGNMENT WAS CREATED
    And I wait for 4 seconds
    And I click on the "//mat-icon[contains(text(),'power_settings_new')]" button
    And I click on the "//span[contains(text(),'Log Out')]" button
    And I wait for 3 seconds
   #THE TEACHER WAS LOG OUT
    And I open ask-stage.portnov login page
    And I type an email "yaro.muzychenko@gmail.com"
    And I type the password "12345"
    And I click on the "//button[@class='mat-raised-button mat-primary']" button
      #STDENT IS SIGN IN
    And I click on the "//button[@class='mat-button mat-primary']" button
    And I click on the "//h5[contains(text(),'My Grades')]" button
    Then the element "//tr[2]" has text "Automatic"
      #DONE

  Scenario: Assignments - Graded by Auto - create quiz with multiple-choice
    Given I open ask-stage.portnov login page
    And I type an email "casio7@meta.ua"
    And I type the password "12345"
    And I click on the "//button[@class='mat-raised-button mat-primary']" button
    And I wait for 2 seconds
     #TEACHER IS SIGN IN
    And I click on the "//h5[contains(text(),'Quizzes')]" button
    And I click on the "//div[@class='controls']//button[@class='mat-raised-button mat-primary']" button
    And I wait for 2 seconds
    And I type text "Quiz graded Auto with multiple-choice" into xPath "//*[@placeholder='Title Of The Quiz *']"
    And I wait for 2 seconds
    And I click on the "//div[@class='controls ng-star-inserted']//span[1]" button
    And I click on the "//div[contains(text(),'Multiple-Choice')]" button
    And I type text "Quiz graded Auto with multiple-choice" into xPath "//textarea[@placeholder='Question *']"
    And I click on the "//button[@class='mat-raised-button mat-accent']" button
    And I wait for 2 seconds
    And I click on the "//span[contains(text(),'Add Option')]" button
    And I click on the "//div[@class='options ng-untouched ng-pristine ng-invalid ng-star-inserted']/div[1]//label[@class='mat-checkbox-layout']" button
    And I wait for 2 seconds
    And I click on the "//div[@class='options ng-untouched ng-pristine ng-invalid ng-star-inserted']/div[2]//label[@class='mat-checkbox-layout']" button
    And I type text "A" into xPath "//textarea[@placeholder='Option 1*']"
    And I type text "B" into xPath "//textarea[@placeholder='Option 2*']"
    And I type text "C" into xPath "//textarea[@placeholder='Option 3*']"
    And I type text "D" into xPath "//textarea[@placeholder='Option 4*']"
    And I click on the "//span[contains(text(),'Save')]" button
    And I wait for 2 seconds
   #QUIZ WAS CREATED
    And I click on the "//h5[contains(text(),'Assignments')]" button
    And I click on the "//button[@class='mat-raised-button mat-primary']" button
    And I click on the "//div[2]/mat-form-field[1]/div/div[1]/div" button
    And I click on the "//span[@class='mat-option-text'][contains(text(),'404!')]" button
    And I click on the "//div[2]/mat-form-field[2]/div/div[1]/div" button
    And I click on the "//span[@class='mat-option-text'][contains(text(),'multiple-choice')]" button
    And I click on the "//mat-selection-list[@class='mat-selection-list ng-untouched ng-pristine ng-invalid']//div[2]" button
    And I click on the "//span[contains(text(),'Give Assignment')]" button
     #ASSIGNMENT WAS CREATED
    And I click on the "//mat-icon[contains(text(),'power_settings_new')]" button
    And I click on the "//span[contains(text(),'Log Out')]" button
    And I wait for 3 seconds
     #THE TEACHER WAS LOG OUT
    And I open ask-stage.portnov login page
    And I type an email "yaro.muzychenko@gmail.com"
    And I type the password "12345"
    And I click on the "//button[@class='mat-raised-button mat-primary']" button
      #STDENT IS SIGN IN
    And I click on the "//mat-icon[contains(text(),'border_color')]" button
    And I click on the "//tr[1]//td[4]//a[1]//button[1]" button
    And I click on the "//span[contains(text(),'A')]" button
    And I wait for 1 seconds
    And I click on the "//span[contains(text(),'B')]" button
    And I wait for 1 seconds
    And I click on the "//button[@class='mat-raised-button mat-primary']" button
    And I click on the "//span[contains(text(),'Ok')]" button
    And I click on the "//mat-icon[contains(text(),'power_settings_new')]" button
    And I click on the "//span[contains(text(),'Log Out')]" button
        #STDENT log out
    And I wait for 1 seconds
    Given I open ask-stage.portnov login page
    And I type an email "casio7@meta.ua"
    And I type the password "12345"
    And I click on the "//button[@class='mat-raised-button mat-primary']" button
    Then I should see page title as "Assessment Control @ Portnov"
   #TEACHER IS SIGN IN
  And I click on the "//mat-icon[contains(text(),'group_add')]" button
And I click on the "//mat-panel-title[@class='mat-expansion-panel-header-title'][contains(text(),'Quiz: Quiz graded Auto with multiple-choice')]" button
And the element "//div[@class='mat-expansion-panel-body']//table" has text "Auto"
#done

  Scenario: Assignments - Graded by Teacher - create quiz with textual question
    Given I open ask-stage.portnov login page
    And I type an email "casio7@meta.ua"
    And I type the password "12345"
    And I click on the "//button[@class='mat-raised-button mat-primary']" button
    And I wait for 2 seconds
     #TEACHER IS SIGN IN
    And I click on the "//h5[contains(text(),'Quizzes')]" button
    And I click on the "//div[@class='controls']//button[@class='mat-raised-button mat-primary']" button
    And I wait for 2 seconds
    And I type text "Quiz with textual question graded by Teacher 2" into xPath "//*[@placeholder='Title Of The Quiz *']"
    And I wait for 2 seconds
    And I click on the "//div[@class='controls ng-star-inserted']//span[1]" button
    And I click on the "//div[contains(text(),'Textual')]" button
    And I type text "What is Quality?" into xPath "//textarea[@placeholder='Question *']"
    And I click on the "//span[contains(text(),'Save')]" button
    And I wait for 2 seconds
   #QUIZ WAS CREATED
    And I click on the "//h5[contains(text(),'Assignments')]" button
    And I click on the "//span[contains(text(),'Create New Assignment')]" button
    And I click on the "//div[2]/mat-form-field[1]/div/div[1]/div" button
    And I click on the "//span[@class='mat-option-text'][contains(text(),'404!')]" button
    And I click on the "//div[2]/mat-form-field[2]/div/div[1]/div" button
    And I click on the "//span[@class='mat-option-text'][contains(text(),'Quiz with textual question')]" button
    And I click on the "//mat-selection-list[@class='mat-selection-list ng-untouched ng-pristine ng-invalid']//div[2]" button
    And I click on the "//span[contains(text(),'Give Assignment')]" button
     #ASSIGNMENT WAS CREATED
    And I click on the "//mat-icon[contains(text(),'power_settings_new')]" button
    And I click on the "//span[contains(text(),'Log Out')]" button
    And I wait for 3 seconds
     #THE TEACHER WAS LOG OUT
    And I open ask-stage.portnov login page
    And I type an email "yaro.muzychenko@gmail.com"
    And I type the password "12345"
    And I click on the "//button[@class='mat-raised-button mat-primary']" button
      #STDENT IS SIGN IN
    And I click on the "//h5[contains(text(),'My Assignments')]" button
    And I wait for 1 seconds
    And I click on the "//tr[2]//td[4]//a[1]//button[1]" button

    And I type text "Corect Raspuns" into xPath "//div[@class='mat-input-infix mat-form-field-infix']//textarea"
    And I wait for 1 seconds
    And I click on the "//span[@class='mat-button-wrapper']" button
    And I click on the "//span[contains(text(),'Ok')]" button
    # PASSED
    And I click on the "//mat-icon[contains(text(),'power_settings_new')]" button
    And I click on the "//span[contains(text(),'Log Out')]" button
    #THE STUDENT WAS LOG OUT
    And I wait for 1 seconds
    Given I open ask-stage.portnov login page
    And I type an email "casio7@meta.ua"
    And I type the password "12345"
    And I click on the "//button[@class='mat-raised-button mat-primary']" button
    And I wait for 2 seconds
        #TEACHER IS SIGN IN
    And I click on the "//mat-icon[contains(text(),'school')]" button
    And I click on the "//td[contains(text(),'Quiz with textual question')]//..//button" button
    And I type text "Corect Raspuns" into xPath "//textarea[@placeholder='Teacher Summary']"
    And I type text "Corect Raspuns" into xPath "//textarea[@placeholder='Teacher Summary']"
    And I click on the "//span[contains(text(),'+')]" button
    And I wait for 1 seconds
    And I click on the "//span[contains(text(),'+')]" button
    And I wait for 1 seconds
    And I click on the "//span[contains(text(),'+')]" button
    And I click on the "//span[contains(text(),'Save')]" button
    #AND ASSIGNMENTS
    And I click on the "//mat-icon[contains(text(),'group_add')]" button
    And I wait for 11 seconds
    And I click on the "//span[@class='mat-content']//mat-panel-title[contains(text(),'Quiz: Quiz with textual question graded by Teacher')]" button
    And the element "//div[@class='mat-expansion-panel-body']//table" has text "Teacher"

    
  Scenario: Assignments - Graded by Automatic - create quiz with single + multiple-choice question
    Given I open ask-stage.portnov login page
    And I type an email "casio7@meta.ua"
    And I type the password "12345"
    And I click on the "//button[@class='mat-raised-button mat-primary']" button
    Then I should see page title as "Assessment Control @ Portnov"
   #TEACHER IS SIGN IN
    And I wait for 2 seconds
    And I click on the "//h5[contains(text(),'Quizzes')]" button
    And I click on the "//div[@class='controls']//button[@class='mat-raised-button mat-primary']" button
    And I wait for 2 seconds
    And I type text "Quiz graded Auto with  a single-choice" into xPath "//*[@placeholder='Title Of The Quiz *']"
    And I wait for 2 seconds
    And I click on the "//div[@class='controls ng-star-inserted']//span[1]" button
    And I click on the "//div[contains(text(),'Single-Choice')]" button
    And I type text "What is Quality?" into xPath "//*[@class='mat-input-element mat-form-field-autofill-control mat-autosize ng-untouched ng-pristine ng-invalid']"
    And I type text "A" into xPath "//div[@class='right']//mat-radio-group[1]//textarea[@placeholder='Option 1*']"
    And I type text "B" into xPath "//div[@class='right']//mat-radio-group[2]//textarea[@placeholder='Option 2*']"
    And I click on the "//button[@class='mat-raised-button mat-accent']" button
    And I type text "C" into xPath "//div[@class='right']//mat-radio-group[3]//textarea[@placeholder='Option 3*']"
    And I click on the "//button[@class='mat-raised-button mat-accent']" button
    And I type text "D" into xPath "//div[@class='right']//mat-radio-group[4]//textarea[@placeholder='Option 4*']"
    And I click on the "//div[@class='right']//mat-radio-group[1]//label[@class='mat-radio-label']" button
    And I click on the "//mat-icon[contains(text(),'add_circle')]" button
    And I click on the "//*[contains(text(),'new empty question')]/../../..//*[contains(text(), 'Multiple-Choice')]" button

    And I wait for 2 seconds
    And I type text "Quiz graded Auto with multiple-choice" into xPath "//*[contains(text(),'new empty question')]/../../..//textarea[@placeholder='Question *']"
    And I wait for 2 seconds

    And I click on the "//div[@class='options ng-untouched ng-pristine ng-invalid ng-star-inserted']/div[1]//label[@class='mat-checkbox-layout']" button
    And I wait for 2 seconds
    And I click on the "//div[@class='options ng-untouched ng-pristine ng-invalid ng-star-inserted']/div[2]//label[@class='mat-checkbox-layout']" button
    And I type text "A" into xPath "//*[contains(text(),'Q2')]/../../..//textarea[@placeholder='Option 1*']"
    And I type text "B" into xPath "//*[contains(text(),'Q2')]/../../..//textarea[@placeholder='Option 2*']"
    And I click on the "//span[contains(text(),'Save')]" button
    And I wait for 2 seconds

   #QUIZ WAS CREATED
    And I click on the "//h5[contains(text(),'Assignments')]" button
    And I click on the "//button[@class='mat-raised-button mat-primary']" button
    And I click on the "//div[2]/mat-form-field[1]/div/div[1]/div" button
    And I click on the "//span[@class='mat-option-text'][contains(text(),'404!')]" button
    And I click on the "//div[2]/mat-form-field[2]/div/div[1]/div" button
    And I click on the "//span[@class='mat-option-text'][contains(text(),'multiple-choice')]" button
    And I click on the "//mat-selection-list[@class='mat-selection-list ng-untouched ng-pristine ng-invalid']//div[2]" button
    And I click on the "//span[contains(text(),'Give Assignment')]" button
   #ASSIGNMENT WAS CREATED
    And I wait for 4 seconds
    And I click on the "//mat-icon[contains(text(),'power_settings_new')]" button
    And I click on the "//span[contains(text(),'Log Out')]" button
    And I wait for 3 seconds
   #THE TEACHER WAS LOG OUT
    And I open ask-stage.portnov login page
    And I type an email "yaro.muzychenko@gmail.com"
    And I type the password "12345"
    And I click on the "//button[@class='mat-raised-button mat-primary']" button
      #STDENT IS SIGN IN
    And I click on the "//button[@class='mat-button mat-primary']" button
    And I click on the "//h5[contains(text(),'My Grades')]" button
    Then the element "//tr[2]" has text "Automatic"
      #DONE




  Scenario: Assignments - Graded by Teacher - create quiz with textual + single choise + multiple- choise questions
    Given I open ask-stage.portnov login page
    And I type an email "casio7@meta.ua"
    And I type the password "12345"
    And I click on the "//button[@class='mat-raised-button mat-primary']" button
    Then I should see page title as "Assessment Control @ Portnov"
   #TEACHER IS SIGN IN
    And I wait for 2 seconds
    And I click on the "//h5[contains(text(),'Quizzes')]" button
    And I click on the "//div[@class='controls']//button[@class='mat-raised-button mat-primary']" button
    And I wait for 2 seconds
    And I type text "Quiz graded Auto with  a single-choice" into xPath "//*[@placeholder='Title Of The Quiz *']"
    And I wait for 2 seconds
    And I click on the "//div[@class='controls ng-star-inserted']//span[1]" button
    And I click on the "//div[contains(text(),'Single-Choice')]" button
    And I type text "What is Quality?" into xPath "//*[@class='mat-input-element mat-form-field-autofill-control mat-autosize ng-untouched ng-pristine ng-invalid']"
    And I type text "A" into xPath "//div[@class='right']//mat-radio-group[1]//textarea[@placeholder='Option 1*']"
    And I type text "B" into xPath "//div[@class='right']//mat-radio-group[2]//textarea[@placeholder='Option 2*']"
    And I click on the "//button[@class='mat-raised-button mat-accent']" button
    And I type text "C" into xPath "//div[@class='right']//mat-radio-group[3]//textarea[@placeholder='Option 3*']"
    And I click on the "//button[@class='mat-raised-button mat-accent']" button
    And I type text "D" into xPath "//div[@class='right']//mat-radio-group[4]//textarea[@placeholder='Option 4*']"
    And I click on the "//div[@class='right']//mat-radio-group[1]//label[@class='mat-radio-label']" button
    And I click on the "//mat-icon[contains(text(),'add_circle')]" button
    And I click on the "//*[contains(text(),'new empty question')]/../../..//*[contains(text(), 'Multiple-Choice')]" button

    And I wait for 2 seconds
    And I type text "Quiz graded Auto with multiple-choice" into xPath "//*[contains(text(),'new empty question')]/../../..//textarea[@placeholder='Question *']"
    And I wait for 2 seconds

    And I click on the "//div[@class='options ng-untouched ng-pristine ng-invalid ng-star-inserted']/div[1]//label[@class='mat-checkbox-layout']" button
    And I wait for 2 seconds
    And I click on the "//div[@class='options ng-untouched ng-pristine ng-invalid ng-star-inserted']/div[2]//label[@class='mat-checkbox-layout']" button
    And I type text "A" into xPath "//*[contains(text(),'Q2')]/../../..//textarea[@placeholder='Option 1*']"
    And I type text "B" into xPath "//*[contains(text(),'Q2')]/../../..//textarea[@placeholder='Option 2*']"

    And I click on the "//mat-icon[contains(text(),'add_circle')]" button
    And I wait for 1 seconds
    And I click on the "//mat-panel-title[contains(text(),'Q3: new empty question')]/../../..//div[contains(text(),'Textual')]" button
    And I wait for 1 seconds
    And I type text "Quiz with textual question graded by Teacher" into xPath "//*[contains(text(),'new empty question')]/../../..//textarea[@placeholder='Question *']"
    And I wait for 2 seconds


    And I click on the "//span[contains(text(),'Save')]" button

   #QUIZ WAS CREATED
    And I click on the "//h5[contains(text(),'Assignments')]" button
    And I click on the "//button[@class='mat-raised-button mat-primary']" button
    And I click on the "//div[2]/mat-form-field[1]/div/div[1]/div" button
    And I click on the "//span[@class='mat-option-text'][contains(text(),'404!')]" button
    And I click on the "//div[2]/mat-form-field[2]/div/div[1]/div" button
    And I click on the "//span[@class='mat-option-text'][contains(text(),'multiple-choice')]" button
    And I click on the "//mat-selection-list[@class='mat-selection-list ng-untouched ng-pristine ng-invalid']//div[2]" button
    And I click on the "//span[contains(text(),'Give Assignment')]" button
   #ASSIGNMENT WAS CREATED
    And I wait for 4 seconds
    And I click on the "//mat-icon[contains(text(),'power_settings_new')]" button
    And I click on the "//span[contains(text(),'Log Out')]" button
    And I wait for 3 seconds
   #THE TEACHER WAS LOG OUT
    And I open ask-stage.portnov login page
    And I type an email "yaro.muzychenko@gmail.com"
    And I type the password "12345"
    And I click on the "//button[@class='mat-raised-button mat-primary']" button
      #STDENT IS SIGN IN
    And I click on the "//button[@class='mat-button mat-primary']" button
    And I click on the "//h5[contains(text(),'My Grades')]" button
    Then the element "//tr[2]" has text "Automatic"
      #DONE



















