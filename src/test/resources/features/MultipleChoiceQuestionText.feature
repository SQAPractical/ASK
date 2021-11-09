@FullRegression
Feature: Multiple Choice Question - Text

  Scenario: Multiple-Choice question - Text - Allowable characters: Alphanumeric and special characters
    When I navigate to login page
    And I type my email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Quizzes" on left menu
    And I click Create New Quiz Button
    And i type quiz title "why123&%$?"
    And I click Add question button
    And I cselect "Multiple-Choice" question type for question 1
    And I type text "Why tester created not clear test set?" for question 1
    And I type text "A" for option 1 for question 1
    And I type text "B" for option 2 for question 1
    And I select option 2  as correct answer for question 1
    And I click save Button
    Then quiz "why123&%$?" appeared in list of quizzes
    Then I click on Preview button for quiz "why123&%$?"
    And I click Close button
    And I delete Quiz"why123&%$?"


  Scenario: Multiple Choice Question - Text - The field is required
    When I navigate to login page
    And I type my email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Quizzes" on left menu
    And I click Create New Quiz Button
    And i type quiz title "Abc"
    And I click on the empty field
    And I click Add question button
    Then I check message "This field is required" appeared


  Scenario: Multiple Choice Question - Text - Min 1 Character
    When I navigate to login page
    And I type my email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Quizzes" on left menu
    And I click Create New Quiz Button
    And i type quiz title "OneCharInQuestionAutomation"
    And I click Add question button
    And I cselect "Multiple-Choice" question type for question 1
    And I type text "W" for question 1
    And I type text "A" for option 1 for question 1
    And I type text "B" for option 2 for question 1
    And I select option 2  as correct answer for question 1
    And I click save Button
    Then quiz "OneCharInQuestionAutomation" appeared in list of quizzes
    Then I click on Preview button for quiz "OneCharInQuestionAutomation"
    And I click Close button
    And I delete Quiz"OneCharInQuestionAutomation"


  Scenario: Multiple Choice Question - Text - Max 1000 characters
    When I navigate to login page
    And I type my email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Quizzes" on left menu
    And I click Create New Quiz Button
    And i type quiz title "1000charsAutomation"
    And I click Add question button
    And I cselect "Multiple-Choice" question type for question 1
    And I type text "iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiii100iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiii100iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiii100iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiii100iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiii100iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiii100iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiii100iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiii100iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiii100iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiii1000" for question 1
    And I type text "A" for option 1 for question 1
    And I type text "B" for option 2 for question 1
    And I select option 2  as correct answer for question 1
    And I click save Button
    Then quiz "1000charsAutomation" appeared in list of quizzes
    Then I click on Preview button for quiz "1000charsAutomation"
    And I click Close button
    And I delete Quiz"1000charsAutomation"


  Scenario: Multiple Choice Question - Text - Max 1000+1 characters
    When I navigate to login page
    And I type my email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Quizzes" on left menu
    And I click Create New Quiz Button
    And i type quiz title "1000+1charsAutomation"
    And I click Add question button
    And I cselect "Multiple-Choice" question type for question 1
    And I type text "+1iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiii100iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiii100iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiii100iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiii100iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiii100iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiii100iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiii100iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiii100iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiii100iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiiiii10iiiiii1000" for question 1
    And I type text "A" for option 1 for question 1
    And I type text "B" for option 2 for question 1
    And I select option 2  as correct answer for question 1
    And I click save Button
    Then quiz "1000+1charsAutomation" appeared in list of quizzes
    Then I click on Preview button for quiz "1000+1charsAutomation"
    And I click Close button
    And I delete Quiz"1000+1charsAutomation"