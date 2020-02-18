# EXAMPLES
# Given open page with name "login page" and url: "http://ask-stage.portnov.com/#/login"
# And verify text "Teacher" with XPath "_" appears
# And wait 3 seconds
# Then type in field with name "login" this text: "teacher@mailinator.com" and with XPath: "_"
# Then click button with name "Sign In" and with XPath "_"
Feature: Quiz - Review in ASK-375
  Scenario: Teacher login and create quiz
    Given open page with name "login page" and url: "http://ask-stage.portnov.com/#/login"
    Then type in field with name "login" this text: "teacher@mailinator.com" and with XPath: "//*[@formcontrolname='email']"
    Then type in field with name "password" this text: "12345" and with XPath: "//*[@formcontrolname='password']"
    And wait 3 seconds
    Then click button with name "Sign In" and with XPath "//button[@type='submit']"
    And wait 3 seconds
    And verify text "David Davidov" with XPath "//*[text()='David Davidov']" appears
    Then click button with name "Quizzes" and with XPath "//*[@href='/#/quizzes']"
    And verify text "List of Quizzes" with XPath "//*[text()='List of Quizzes']" appears
    Then click button with name "Create new quiz" and with XPath "//*[text()='Create New Quiz']"
    And verify text "Title Of The Quiz *" with XPath "//*[@placeholder='Title Of The Quiz *']" appears
    And wait 15 seconds
    Then type in field with name "Title Of The Quiz *" this text: "Quiz for test of review" and with XPath: "//*[@placeholder='Title Of The Quiz *']"
    And wait 15 seconds
    Then click button with name "Add question" and with XPath "//*[@class='controls ng-star-inserted']//button"
    And wait 15 seconds
    Then click button with name "Select Textual radio-button" and with XPath "//div[contains(text(),'Textual')]/..//div[@class='mat-radio-container']"
    And wait 15 seconds
    Then type in field with name "question" this text: "What is QA?" and with XPath: "//main[@class='collapsed']//mat-expansion-panel[1]//*[@placeholder='Question *']"
    And wait 15 seconds
    Then click button with name "Save" and with XPath "//*[contains(text(),'Save')]"
    And wait 15 seconds
  #Scenario: Teacher assign quiz
    Then click button with name "Assignments" and with XPath "//*[text()='Assignments']/.."
    And verify text "List of Assignments" with XPath "//h4[text()='List of Assignments']" appears
    Then click button with name "Create New Assignment" and with XPath "//*[contains(text(),'Create New Assignment')]"
    Then click button with name "Group Filter -> All" and with XPath "//mat-select[@placeholder='Group Filter']"
    And wait 15 seconds
    Then wait when element will be present with "name" and XPath "//mat-option//*[text()='ABC']/.."
    Then click button with name "ABC" and with XPath "//*[@class='ng-trigger ng-trigger-transformPanel ng-tns-c30-19055 mat-select-panel mat-primary ng-star-inserted mat-select-panel-done-animating']//*[text()='ABC']/.."
    And wait 15 seconds
    Then click button with name "Select Quiz to Assign" and with XPath "//*[@formcontrolname='quizId']"
    And wait 15 seconds
    Then click button with name "Quiz for test of review" and with XPath "//*[contains(text(), 'Quiz for test of \"review\"')]/.."
    And wait 3 seconds
    #
    #Then select "ABC" by text in dropdown list with name "Group Filter" and XPath "//mat-select[@placeholder='Group Filter']"
    #
    Then click button with name "Select All" and with XPath "//button//*[text()='Select All']"
    #All students in the list is checked?
    Then click button with name "Give Assignment" and with XPath "??????????????"
    And wait 15 seconds
    Then click button with name "Log out" and with XPath "//*[text()='Log Out']/.."
    And wait 15 seconds
    Then click button with name "to confirm Log out" and with XPath "//button[@color='warn']/*[text()='Log Out']"
    And verify text "Do not have account?" with XPath "//*[text()='Do not have account?']" appears
    #TODO
  Scenario: student login and pass quiz
    Then Fill out login: "petrov@mailinator.com" and password: "12345"
    Then Click "Sign In" button
    And verify Page with "Peter Petrov" in left corner loaded
    Then Click on "My Assignments" button
    And verify List of Assignments appears
    Then Click on Go to Assignment button by the name of quiz "Quiz for test of 'review'"
    And verify the Form with question appears
    Then Type in field "Software QA is the process of monitoring and improving all activities associated with software development, from requirements gathering, design and reviews to coding, testing and implementation."
    Then Click on "Submit my Answers" button
    And verify "Success!" message appears
    Then Click "Ok" button
    Then Click "Log out" button
    #Confirmation form appears
    Then Click "Log out" button on confirmation form
    And verify Redirect to Login page
  Scenario: teacher login and grade quiz
    Then Fill out login: "teacher@mailinator.com" and password: "12345"
    Then Click "Sign In" button
    And verify page with name "Leslie Teacher" in left corner loaded
    Then Click on "Submission" button
    And verify List of submissions appears
    Then Click "Grade" button by the item of list with student's name "Peter Petrov"
    Then Click 5 times "+" button
    Then Type summary in the field "Great answer!"
    Then Click on "Save" button
    And verify List of submissions appears
    Then Click "Log out" button
    #Confirmation form appears
    Then Click "Log out" button on confirmation form
    And verify Redirect to Login page
  Scenario: student login and check grade
    Then Fill out login: "petrov@mailinator.com" and password: "12345"
    Then Click "Sign In" button
    And verify Page with "Peter Petrov" in left corner loaded
    Then Click "My Grades" button
    And verify List of Grades appears
    And verify item with quiz's name "Quiz for test of 'review'" appears
    And verify status "Passed"