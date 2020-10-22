@fullregression
Feature: Quizzes Create New Multiple Choice Question Text

  Scenario: Multiple Choice Question Text - Alphanumeric, Special characters
    Given I open "login" page
    When I type email "qa.sofi@gmail.com" on login page
    And I type password "12345" on login page
    And I click Sign in button
    And I click quizzes on left menu
    And I click on Create New Quiz at the bottom of the page
    And I type "Multiple-Choice" in Title Of The Quiz field
    And I click on Add Question underneath the Title
    And I select Question type: Multiple Choice Question
    And I type the question "What is the remainder of 21 divided(/) by 7?" in to Question field
    And I type text "7" for Option 1
    And I type text "27" for Option 2
    When I click on Add Option
    And I type text "1" for Option 3
    And I click on Add Option
    And I type text "None of these" for Option 4
    And I click on checkbox for Option 1
    And I click SAVE button
    Then Text "List of Quizzes" appears


  Scenario: Multiple Choice Question Text - Text field is required
    Given I open "login" page
    When I type email "qa.sofi@gmail.com" on login page
    And I type password "12345" on login page
    And I click Sign in button
    And I click quizzes on left menu
    And I click on Create New Quiz at the bottom of the page
    And I type "Multiple-Choice" in Title Of The Quiz field
    And I click Add Question underneath the Title
    And I select Question type: Multiple Choice Question
    And I click on Question field
    And I click on Option 1 field
    Then Text "This field is required" appears
    When I click SAVE button
    Then Text "Quiz is not completed. Check highlighted with \"red\" areas" appears

  Scenario Outline: Multiple Choice Question Text - 1001 rejected, max 1000 Character min 1 Character
    Given I open <pageName> page
    When I type email <email> on login page
    And I type password <password> on login page
    And I click Sign in button
    And I click quizzes on left menu
    And I click on Create New Quiz at the bottom of the page
    And I type <quizName> in Title Of The Quiz field
    And I click Add Question underneath the Title
    And I select Question type: Multiple Choice Question
    And I type the question <question> in to Question field
    And I type text "Yes" for Option 1
    And I type text "No" for Option 2
    And I click on checkbox for Option 1
    And I click SAVE button
    Then Text <text> appears
    Examples:
      | pageName | email               | password | quizName          | question                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | text                                               |
      | "login"  | "qa.sofi@gmail.com" | "12345"  | "Multiple-Choice" | "Online Character Count Tool A while back I needed to count the amount of letters that a piece of text in an email template had (to avoid passing any character limits). Unfortunately, I could not think of a quick way to do so on my macbook and I therefore turned to the Internet. There were a couple of tools out there, but none of them met my standards and since I am a tester I thought: why not do it myself and help others along the way? And here is the result, hope it helps out! You can copy and paste your text with the characters to count in the text area above, or you can type your characters and words into the text area. The counter will be updated instantly, displaying the amount of characters, words, sentences, paragraphs and whitespace in your text, not to mention that the keyword density (which you can configure from the options menu) is also displayed. Character Count Online is a free online character and word counting tool. All results are immediately shown 1001 characters! $*%1" | "Too long. Should be no more than 1000 characters" |
      | "login"  | "qa.sofi@gmail.com" | "12345"  | "Multiple-Choice" | "Online Character Count Tool A while back I needed to count the amount of letters that a piece of text in an email template had (to avoid passing any character limits). Unfortunately, I could not think of a quick way to do so on my macbook and I therefore turned to the Internet. There were a couple of tools out there, but none of them met my standards and since I am a tester I thought: why not do it myself and help others along the way? And here is the result, hope it helps out! You can copy and paste your text with the characters to count in the text area above, or you can type your characters and words into the text area. The counter will be updated instantly, displaying the amount of characters, words, sentences, paragraphs and whitespace in your text, not to mention that the keyword density (which you can configure from the options menu) is also displayed. Character Count Online is a free online character and word counting tool. All results are immediately shown 1001 characters! $*%"  | "List of Quizzes" |
