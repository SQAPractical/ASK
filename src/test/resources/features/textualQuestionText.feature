Feature: Textual Question - Text
  Background: login steps
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click "Quizzes" menu item
    And I click Create new quiz button
    And I type quiz title "Types of Testing_Automation"
    And I click Add question button
    And I select Question type "Textual" for question 1

  Scenario: Textual Question - Text - Allowable characters: Alphanumeric & Special characters
    And I type text "Smoke test - ..." for question 1
    And I click Save button
    Then Quiz "Types of Testing_Automation" is present in list
    And I wait for 2 seconds
    And I delete quiz "Types of Testing_Automation"

  Scenario: Textual Question - Text - The field is required
    And I type text "" for question 1
    And I wait for 2 seconds
    And I click Save button
    Then Text "This field is required" appears

  Scenario: Textual Question - Text - Min 1 Character - Lowercase letter
    And I type text "a" for question 1
    And I click Save button
    Then Quiz "Types of Testing_Automation" is present in list
    And I wait for 2 seconds
    And I delete quiz "Types of Testing_Automation"

  Scenario: Textual Question - Text - Min 1 Character - Uppercase letter
    And I type text "A" for question 1
    And I click Save button
    Then Quiz "Types of Testing_Automation" is present in list
    And I wait for 5 seconds
    And I delete quiz "Types of Testing_Automation"

  Scenario: Textual Question - Text - Min 1 Character - Number
    And I type text "1" for question 1
    And I click Save button
    Then Quiz "Types of Testing_Automation" is present in list
    And I wait for 5 seconds
    And I delete quiz "Types of Testing_Automation"

  Scenario: Textual Question - Text - Min 1 Character - Special character
    And I type text "!" for question 1
    And I click Save button
    Then Quiz "Types of Testing_Automation" is present in list
    And I wait for 5 seconds
    And I delete quiz "Types of Testing_Automation"

  Scenario: Textual Question - Text - Min 1 Character - Max 1000 characters
    And I type text "What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Why do we use it? It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as the" for question 1
    And I click Save button
    Then Quiz "Types of Testing_Automation" is present in list
    And I wait for 5 seconds
    And I delete quiz "Types of Testing_Automation"

  Scenario: Textual Question - Text - Min 1 Character - Max 1000+1 characters (bug)
    And I type text "1What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Why do we use it? It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as the" for question 1
    And I click Save button
    Then Quiz "Types of Testing_Automation" is present in list
    And I wait for 5 seconds
    And I delete quiz "Types of Testing_Automation"




