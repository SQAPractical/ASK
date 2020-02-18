# EXAMPLES
# Given open page with name "login page" and url: "http://ask-stage.portnov.com/#/login"
# And verify text "Teacher" with XPath "_" appears
# And wait 3 seconds
# Then type in field with name "login" this text: "teacher@mailinator.com" and with XPath: "_"
# Then click button with name "Sign In" and with XPath "_"
# Then multiple click 5 times on button with name "text" and with XPath "//button/*[contains(text(),'+')]/.."
# When text SOUT "text"

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
    And wait 5 seconds
    Then type in field with name "Title Of The Quiz *" this text: "Quiz for test of review" and with XPath: "//*[@placeholder='Title Of The Quiz *']"
    And wait 5 seconds
    Then click button with name "Add question" and with XPath "//*[@class='controls ng-star-inserted']//button"
    And wait 5 seconds
    Then click button with name "Select Textual radio-button" and with XPath "//div[contains(text(),'Textual')]/..//div[@class='mat-radio-container']"
    And wait 5 seconds
    Then type in field with name "question" this text: "What is QA?" and with XPath: "//main[@class='collapsed']//mat-expansion-panel[1]//*[@placeholder='Question *']"
    And wait 5 seconds
    Then click button with name "Save" and with XPath "//*[contains(text(),'Save')]"
    And wait 3 seconds
    Then click button with name "Log out" and with XPath "//*[text()='Log Out']/.."
    And wait 3 seconds
    Then click button with name "to confirm Log out" and with XPath "//button[@color='warn']/*[text()='Log Out']"
    And wait 3 seconds
    And verify text "Do not have account?" with XPath "//*[text()='Do not have account?']" appears
    When text SOUT "Teacher create quiz: DONE"

  Scenario: Teacher assign quiz
    Given open page with name "login page" and url: "http://ask-stage.portnov.com/#/login"
    Then type in field with name "login" this text: "teacher@mailinator.com" and with XPath: "//*[@formcontrolname='email']"
    Then type in field with name "password" this text: "12345" and with XPath: "//*[@formcontrolname='password']"
    And wait 3 seconds
    Then click button with name "Sign In" and with XPath "//button[@type='submit']"
    And wait 3 seconds
    And verify text "David Davidov" with XPath "//*[text()='David Davidov']" appears
    Then click button with name "Assignments" and with XPath "//*[text()='Assignments']/.."
    And verify text "List of Assignments" with XPath "//h4[text()='List of Assignments']" appears
    Then click button with name "Create New Assignment" and with XPath "//*[contains(text(),'Create New Assignment')]"
    Then click button with name "Group Filter -> All" and with XPath "//mat-select[@placeholder='Group Filter']"
    And wait 5 seconds
    Then wait when element will be present with "name" and XPath "//mat-option//*[text()='ABC']/.."
    And wait 5 seconds
    Then click button with name "ABC" and with XPath "//mat-option//*[text()='ABC']/.."
    And wait 5 seconds
    Then click button with name "Select Quiz to Assign" and with XPath "//*[@formcontrolname='quizId']"
    And wait 10 seconds
    Then click button with name "Quiz for test of review" and with XPath "//*[contains(text(), 'Quiz for test of \"review\"')]/.."
    And wait 3 seconds
    #Then select "ABC" by text in dropdown list with name "Group Filter" and XPath "//mat-select[@placeholder='Group Filter']"  # Webdriver.select does not work
    Then click button with name "Select All" and with XPath "//button//*[text()='Select All']"
    #TODO All students in the list are checked?
    Then click button with name "Give Assignment" and with XPath "//span[contains(.,'Give Assignment')]/.."
    And wait 3 seconds
    Then click button with name "Log out" and with XPath "//*[text()='Log Out']/.."
    And wait 3 seconds
    Then click button with name "to confirm Log out" and with XPath "//button[@color='warn']/*[text()='Log Out']"
    And wait 3 seconds
    And verify text "Do not have account?" with XPath "//*[text()='Do not have account?']" appears
    When text SOUT "Teacher assign quiz: DONE"

  Scenario: Student login and pass quiz
    Given open page with name "login page" and url: "http://ask-stage.portnov.com/#/login"
    Then type in field with name "login" this text: "uqjptymw49@post-shift.ru" and with XPath: "//*[@formcontrolname='email']"
    Then type in field with name "password" this text: "12345" and with XPath: "//*[@formcontrolname='password']"
    And wait 3 seconds
    Then click button with name "Sign In" and with XPath "//button[@type='submit']"
    And wait 3 seconds
    And verify text "Peter Petrov" with XPath "//*[text()='Peter Petrov']" appears
    Then click button with name "My Assignments" and with XPath "//h5[contains(.,'My Assignments')]/.."
    And verify text "My Assignments" with XPath "//h4[contains(text(),'My Assignments')]" appears
    And wait 3 seconds
    Then click button with name "Go To Assessment" and with XPath "//mat-card[@class='page mat-card']//tr[1]//*[text()='Go To Assessment']/.."
    And verify text "Submit My Answers" with XPath "//*[text()='Submit My Answers']/.." appears
    And wait 5 seconds
    Then type in field with name "Enter your answer" this text: "Software QA is ..." and with XPath: "//*[@placeholder='Enter your answer']"
    And wait 10 seconds
    Then click button with name "Submit My Answers" and with XPath "//*[text()='Submit My Answers']/.."
    And verify text "Success!" with XPath "//*[text()='Success!']" appears
    Then click button with name "OK" and with XPath "//span[contains(text(),'Ok')]"
    And wait 3 seconds
    Then click button with name "Log out" and with XPath "//*[text()='Log Out']/.."
    And wait 3 seconds
    Then click button with name "to confirm Log out" and with XPath "//button[@color='warn']/*[text()='Log Out']"
    And wait 3 seconds
    And verify text "Do not have account?" with XPath "//*[text()='Do not have account?']" appears
    When text SOUT "Student pass quiz: DONE"

  Scenario: teacher login and grade quiz
    Given open page with name "login page" and url: "http://ask-stage.portnov.com/#/login"
    Then type in field with name "login" this text: "teacher@mailinator.com" and with XPath: "//*[@formcontrolname='email']"
    Then type in field with name "password" this text: "12345" and with XPath: "//*[@formcontrolname='password']"
    And wait 3 seconds
    Then click button with name "Sign In" and with XPath "//button[@type='submit']"
    And wait 3 seconds
    And verify text "David Davidov" with XPath "//*[text()='David Davidov']" appears
    Then click button with name "Submission" and with XPath "//h5[contains(text(),'Submissions')]/.."
    And verify text "Submission" with XPath "//h4[contains(text(),'Submissions')]" appears
    Then click button with name "Peter Petrov" and with XPath "//*[text()='Peter Petrov']//..//button"
    And wait 5 seconds
    Then multiple click 5 times on button with name "+" and with XPath "//button/*[contains(text(),'+')]/.."
    And wait 5 seconds
    Then type in field with name "summary" this text: "Great answer!" and with XPath: "//*[@placeholder='Teacher Summary']"
    Then click button with name "Save" and with XPath "//span[text()='Save']/.."
    And wait 3 seconds
    And verify text "submissions" with XPath "//h4[contains(text(),'Submissions')]" appears
    And wait 3 seconds
    Then click button with name "Log out" and with XPath "//*[text()='Log Out']/.."
    And wait 3 seconds
    Then click button with name "to confirm Log out" and with XPath "//button[@color='warn']/*[text()='Log Out']"
    And wait 3 seconds
    And verify text "Do not have account?" with XPath "//*[text()='Do not have account?']" appears
    When text SOUT "Student grade quiz: DONE"

  Scenario: student login and check grade
    Given open page with name "login page" and url: "http://ask-stage.portnov.com/#/login"
    Then type in field with name "login" this text: "uqjptymw49@post-shift.ru" and with XPath: "//*[@formcontrolname='email']"
    Then type in field with name "password" this text: "12345" and with XPath: "//*[@formcontrolname='password']"
    And wait 3 seconds
    Then click button with name "Sign In" and with XPath "//button[@type='submit']"
    And wait 3 seconds
    And verify text "Peter Petrov" with XPath "//*[text()='Peter Petrov']" appears
    Then click button with name "My Grades" and with XPath "//h5[contains(text(),'My Grades')]"
    And verify text "My Grades" with XPath "//h4[contains(text(),'My Grades')]" appears
    And verify text "passed" with XPath "//*[@class='passed']" appears
    And wait 3 seconds
    Then click button with name "Log out" and with XPath "//*[text()='Log Out']/.."
    And wait 3 seconds
    Then click button with name "to confirm Log out" and with XPath "//button[@color='warn']/*[text()='Log Out']"
    And wait 3 seconds
    And verify text "Do not have account?" with XPath "//*[text()='Do not have account?']" appears
    When text SOUT "Student check grade: DONE"