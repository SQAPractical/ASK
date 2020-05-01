Feature: Textual question-Text

  Background: Textual question - Text
    Given I open login page
    Then I type email "fatitest311+t2@gmail.com"
    Then I type password "12345"
    Then I click Sign in button
    Then I click on "Quizzes" button
    Then I click on "Create New Quiz" button

  Scenario Outline: Textual question - Text
    Then I type <title> in the Title of the Quiz field
    Then I click on Add Question button
    Then I click on <button1> button
    Then I type <question> field
    Then I click on <button2> button
    Then text <text1> appears
    And text <text2> appears
    Examples:
      | title                                   | button1   | button2 | text1                                  | text2                                                         | question   |
      | "!Textual Question - Text - Alph&SpChar"| "Textual" |"Save"   | "List of Quizzes"                      |"!Textual Question - Text - Alph&SpChar"                       | "Textual Question - Alphanumeric & Sp. characters123"        |
      | "!Textual Question - Text - 1 char"     | "Textual" |"Save"   | "List of Quizzes"                      |"!Textual Question - Text - 1 char"                            | "A"        |
      | "!Textual Question - Text - 1000 char"  | "Textual" |"Save"   | "List of Quizzes"                      |"!Textual Question - Text - 1000 char"                         | "I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 cha"|
      | "!Textual Question - Text - empty"      | "Textual" |"Save"   | "This field is required"               | "Quiz is not completed. Check highlighted with \"red\" areas" | ""        |
      | "!Textual Question - Text - 1001 char"  | "Textual" |"Save"   | "Should no more than 1000 characters." |"Quiz is not completed. Check highlighted with \"red\" areas"  | "I am typing 1001 characters. I am typing 1001 characters. I am typing 1001 characters. I am typing 1001 characters. I am typing 1001 characters. I am typing 1001 characters. I am typing 1001 characters. I am typing 1001 characters. I am typing 1001 characters. I am typing 1001 characters. I am typing 1001 characters. I am typing 1001 characters. I am typing 1001 characters. I am typing 1001 characters. I am typing 1001 characters. I am typing 1001 characters. I am typing 1001 characters. I am typing 1001 characters. I am typing 1001 characters. I am typing 1001 characters. I am typing 1001 characters. I am typing 1001 characters. I am typing 1001 characters. I am typing 1001 characters. I am typing 1001 characters. I am typing 1001 characters. I am typing 1001 characters. I am typing 1001 characters. I am typing 1001 characters. I am typing 1001 characters. I am typing 1001 characters. I am typing 1001 characters. I am typing 1001 characters. I am typing 1001 characters. I am typing 100"|



    
