Feature: Quiz Textual Question
  Scenario: Textual Question - Alpha numeric & Sp. Characters
    Given I open "Login" page
    When I type email "assessment.portnov@gmail.com"
    And I type password "12345"
    And I click Sign in button
    And Text "Jane Doe" appears
    And I click "Quizzes" button
    And I click Create New Quiz button
    And I type title of the quiz "Quiz@1&Eyob"
    And I click Add Question
    And I click Textual radio button
    And type question "Where is the birth place of coffee?"
    And click Is "Show-Stopper" question? radio button
    And click save button
    Then text "Quiz@1&Eyob" appears


  Scenario:Textual Question - Min 1 Character
    Given I open "Login" page
    When I type email "assessment.portnov@gmail.com"
    And I type password "12345"
    And I click Sign in button
    And Text "Jane Doe" appears
    And I click "Quizzes" button
    And I click Create New Quiz button
    And I type title of the quiz "Quiz Boundary test1"
    And I click Add Question
    And I click Textual radio button
    And type question "E"
    And click Is "Show-Stopper" question? radio button
    And click save button
    Then text "Quiz Boundary test1" appears

  Scenario:Textual Question - Maximum 1000 character
    Given I open "Login" page
    When I type email "assessment.portnov@gmail.com"
    And I type password "12345"
    And I click Sign in button
    And Text "Jane Doe" appears
    And I click "Quizzes" button
    And I click Create New Quiz button
    And I type title of the quiz "Quiz Boundary 1000"
    And I click Add Question
    And I click Textual radio button
    And type question "(1000 characters)What is software testing What is software testing What is software testing What is software testing What is software testingWhat is software testing What is software testing What is software testing What is software testing What is software testingWhat is software testing What is software testing What is software testing What is software testing What is software testingWhat is software testing What is software testing What is software testing What is software testing What is software testingWhat is software testing What is software testing What is software testing What is software testing What is software testingWhat is software testing What is software testing What is software testing What is software testing What is software testingWhat is software testing What is software testing What is software testing What is software testing What is software testingWhat is software testing What is software testing What is software testing What is software testing What is softwar"
    And click Is "Show-Stopper" question? radio button
    And click save button
    Then text "Quiz Boundary 1000" appears

  Scenario:Textual Question - More than 1000 Characters
    Given I open "Login" page
    When I type email "assessment.portnov@gmail.com"
    And I type password "12345"
    And I click Sign in button
    And Text "Jane Doe" appears
    And I click "Quizzes" button
    And I click Create New Quiz button
    And I type title of the quiz "Quiz Boundary 1001"
    And I click Add Question
    And I click Textual radio button
    And type question "(1000+1 characters)What is software testing What is software testing What is software testing What is software testing What is software testingWhat is software testing What is software testing What is software testing What is software testing What is software testingWhat is software testing What is software testing What is software testing What is software testing What is software testingWhat is software testing What is software testing What is software testing What is software testing What is software testingWhat is software testing What is software testing What is software testing What is software testing What is software testingWhat is software testing What is software testing What is software testing What is software testing What is software testingWhat is software testing What is software testing What is software testing What is software testing What is software testingWhat is software testing What is software testing What is software testing What is software testing What is softwa"
    And click Is "Show-Stopper" question? radio button
    And click save button
    Then text "Maximum allowed character is 1000" appears

  Scenario: Textual Question - Required Field (Empty Textual Question)
    Given I open "Login" page
    When I type email "assessment.portnov@gmail.com"
    And I type password "12345"
    And I click Sign in button
    And Text "Jane Doe" appears
    And I click "Quizzes" button
    And I click Create New Quiz button
    And I type title of the quiz "Quiz Required"
    And I click Add Question
    And I click Textual radio button
    And type question ""
    And click Is "Show-Stopper" question? radio button
    And click save button
    Then text "This field is required" appears

  Scenario: Textual Question- White spaces are not allowed
    Given I open "Login" page
    When I type email "assessment.portnov@gmail.com"
    And I type password "12345"
    And I click Sign in button
    And Text "Jane Doe" appears
    And I click "Quizzes" button
    And I click Create New Quiz button
    And I type title of the quiz "Quiz White spaces are not allowed"
    And I click Add Question
    And I click Textual radio button
    And type question "   "
    And click Is "Show-Stopper" question? radio button
    And click save button
    Then text "Whitespaces are not allowed" appears