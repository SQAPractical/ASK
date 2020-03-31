Feature: Textual Questions Text

  @AssessmentControl_1
  Scenario: Verify if teacher can create quiz with Alphanumeric & Sp. characters in text of Textual question
    Given I open url "http://ask-stage.portnov.com"
    When I type "araltan.qae12@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    When I type "Araltan123" into element with xpath "//input[@formcontrolname='password']"
    When I click on element using JavaScript with xpath "//button[@class='mat-raised-button mat-primary']"
    And I switch to new window
    When I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    When I click on element with xpath " //span[contains(text(),'Create New Quiz')]"
    Then I wait for element with xpath "//input[@formcontrolname='name']" to be present
    When I type "The Oscars 2020" into element with xpath "//input[@formcontrolname='name']"
    When I click on element with xpath "//div[@class='controls ng-star-inserted']//span"
    When I click on element with xpath "//mat-radio-button[1]//label[1]//div[1]//div[2]"
    When I type "Which movie won the Oscar in 2020??? !@#%^&*(" into element with xpath "//textarea[@placeholder='Question *']"
    When I click on element with xpath "//div[@class='form-controls-container ng-star-inserted']//button[2]"
    Then I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present



  @AssessmentControl_2
  Scenario: Verify that teacher can't create quiz with Textual question without text in it
    Given I open url "http://ask-stage.portnov.com"
    When I type "araltan.qae12@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    When I type "Araltan123" into element with xpath "//input[@formcontrolname='password']"
    When I click on element using JavaScript with xpath "//button[@class='mat-raised-button mat-primary']"
    And I switch to new window
    When I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    When I click on element with xpath " //span[contains(text(),'Create New Quiz')]"
    Then I wait for element with xpath "//input[@formcontrolname='name']" to be present
    When I type "The MTV Music Awards 2020" into element with xpath "//input[@formcontrolname='name']"
    When I click on element with xpath "//div[@class='controls ng-star-inserted']//span"
    When I click on element with xpath "//mat-radio-button[1]//label[1]//div[1]//div[2]"
    When I click on element with xpath "//div[@class='form-controls-container ng-star-inserted']//button[2]"
    Then element with xpath "//mat-error[@class='mat-error ng-star-inserted']" should have text as "This field is required"


  @AssessmentControl_3
  Scenario: Verify the user can create a quiz with at least 1 character in text of textual question
    Given I open url "http://ask-stage.portnov.com"
    When I type "araltan.qae12@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    When I type "Araltan123" into element with xpath "//input[@formcontrolname='password']"
    When I click on element using JavaScript with xpath "//button[@class='mat-raised-button mat-primary']"
    And I switch to new window
    When I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    When I click on element with xpath " //span[contains(text(),'Create New Quiz')]"
    Then I wait for element with xpath "//input[@formcontrolname='name']" to be present
    When I type "The MTV Music Awards 2020" into element with xpath "//input[@formcontrolname='name']"
    When I click on element with xpath "//div[@class='controls ng-star-inserted']//span"
    When I click on element with xpath "//mat-radio-button[1]//label[1]//div[1]//div[2]"
    When I type "A" into element with xpath "//textarea[@placeholder='Question *']"
    When I click on element with xpath "//div[@class='form-controls-container ng-star-inserted']//button[2]"
    Then I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present


  @AssessmentControl_4
  Scenario: Verify the user can create a quiz with max 1000 characters in text of textual question
    Given I open url "http://ask-stage.portnov.com"
    When I type "araltan.qae12@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    When I type "Araltan123" into element with xpath "//input[@formcontrolname='password']"
    When I click on element using JavaScript with xpath "//button[@class='mat-raised-button mat-primary']"
    And I switch to new window
    When I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    When I click on element with xpath " //span[contains(text(),'Create New Quiz')]"
    Then I wait for element with xpath "//input[@formcontrolname='name']" to be present
    When I type "The MTV Music Awards 2020" into element with xpath "//input[@formcontrolname='name']"
    When I click on element with xpath "//div[@class='controls ng-star-inserted']//span"
    When I click on element with xpath "//mat-radio-button[1]//label[1]//div[1]//div[2]"
    When I type "juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,j" into element with xpath "//textarea[@placeholder='Question *']"
    When I click on element with xpath "//div[@class='form-controls-container ng-star-inserted']//button[2]"
    Then I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present


  @AssessmentControl_5
  Scenario: Verify the user can't create a quiz with max 1001 characters in text of textual question
    Given I open url "http://ask-stage.portnov.com"
    When I type "araltan.qae12@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    When I type "Araltan123" into element with xpath "//input[@formcontrolname='password']"
    When I click on element using JavaScript with xpath "//button[@class='mat-raised-button mat-primary']"
    And I switch to new window
    When I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    When I click on element with xpath " //span[contains(text(),'Create New Quiz')]"
    Then I wait for element with xpath "//input[@formcontrolname='name']" to be present
    When I type "Why is it so difficult to be a QA engineer?" into element with xpath "//input[@formcontrolname='name']"
    When I click on element with xpath "//div[@class='controls ng-star-inserted']//span"
    When I click on element with xpath "//mat-radio-button[1]//label[1]//div[1]//div[2]"
    When I type "juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,juventus,ju" into element with xpath "//textarea[@placeholder='Question *']"
    When I click on element with xpath "//div[@class='form-controls-container ng-star-inserted']//button[2]"
    Then element with xpath "//mat-error[@class='mat-error ng-star-inserted']" should have text as "The field allowed only 1000 characters"






