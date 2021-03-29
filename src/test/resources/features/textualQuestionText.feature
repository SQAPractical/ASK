Feature: Textual Questions- Text
  Scenario: Textual Question -Text-Alphanumeric & Sp. characters
    When I navigate to login page
    And I type email "anacandit@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    Then I wait for element with xpath "Quizzes" to be present
    And I click on "Quizzes" menu item
    And I click on Create New Quiz button
    And I type title of the quiz "Alphanumeric"
    And I click on Add Question button
    Then new window with text "Q1: new empty question" appears
    And I click  on  " Textual Type Question" radio button
    And I type question "123Abc@#$" for question field
    And I click on Save button
    Then "List of quizzes" appears

  Scenario:Textual Question - Text - Field is required
    When I navigate to login page
    And I type email "anacandit@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    Then I wait for element with xpath "Quizzes" to be present
    And I click on "Quizzes" menu item
    And I click on Create New Quiz button
    And I type title of the quiz "Field required"
    And I click on Add Question button
    Then new window with text "Q1: new empty question" appears
    And I click  on  " Textual Type Question" radio button
    And I click on Save button
    Then error message "Quiz is not completed. Check highlighted with red areas" appears


  Scenario:Textual Question -Text -Min 1 Characters
    When I navigate to login page
    And I type email "anacandit@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    Then I wait for element with xpath "Quizzes" to be present
    And I click on "Quizzes" menu item
    And I click on Create New Quiz button
    And I type title of the quiz "One character"
    And I click on Add Question button
    Then new window with text "Q1: new empty question" appears
    And I click  on  " Textual Type Question" radio button
    And I type question "A" for question field
    And I click on Save button
    Then "List of quizzes" appears

  Scenario:Textual Question -Text -Maximum 1000 Characters
    When I navigate to login page
    And I type email "anacandit@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    Then I wait for element with xpath "Quizzes" to be present
    And I click on "Quizzes" menu item
    And I click on Create New Quiz button
    And I type title of the quiz "1000 characters"
    And I click on Add Question button
    Then new window with text "Q1: new empty question" appears
    And I click  on  " Textual Type Question" radio button
    And I type question "dsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdddddddddddddddddddddddddddddd" for question field
    And I click on Save button
    Then "List of quizzes" appears


  Scenario:Textual Question -Text - Max 1000+1 Characters
    When I navigate to login page
    And I type email "anacandit@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    Then I wait for element with xpath "Quizzes" to be present
    And I click on "Quizzes" menu item
    And I click on Create New Quiz button
    And I type title of the quiz "1000+1 characters"
    And I click on Add Question button
    Then new window with text "Q1: new empty question" appears
    And I click  on  " Textual Type Question" radio button
    And I type question "5dsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdsdsddddvvdddddddddddddddddddddddddddddd" for question field
    And I click on Save button
    Then error message "Quiz is not completed. Check highlight with red areas" appears

