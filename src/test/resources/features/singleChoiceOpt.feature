Feature: Single Choice Question - Options

  Background: Single Choice Question
    Given I open login page
    Then I type email "fatitest311+t2@gmail.com"
    Then I type password "12345"
    Then I click Sign in button
    Then I click on "Quizzes" button
    Then I click on "Create New Quiz" button

  Scenario Outline: Single Choice Question - Positive and 1000 characters
    Then I type <title> in the Title of the Quiz field
    Then I click on Add Question button
    Then I click on <button1> button
    Then I type <question> field
    Then I type <answer1> in the <opt1> field
    Then I type <answer2> in the <opt2> field
    Then I click on Option <ans> radio button
    Then I click on <button2> button
    Then text <text1> appears
    And text <text2> appears
    Examples:
      | title                    | button1         |button2| question    | ans |opt1        | opt2      | text1               | text2                        |answer1          | answer2         |
      #  Single Choice Question - Options - positive
      | "!SingleChoice-Positive" | "Single-Choice" |"Save" | "Positive"  |  1  |"Option 1"  |"Option 2" | "List of Quizzes"   |"!SingleChoice-Positive"      | "Correct answer"| "Wrong answer"  |
      #  Single Choice Question - Options - Max 1000 characters
      | "!SingleChoice-1000 char"| "Single-Choice" |"Save" | "1000 char" |  2  |"Option 1"  |"Option 2" | "List of Quizzes"   |"!SingleChoice-1000 char      | "Wrong answer"  | "I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 characters.I am typing 1000 cha" |

  Scenario Outline: Single Choice Question - Required field - correct answer radio button
    Then I type <title> in the Title of the Quiz field
    Then I click on Add Question button
    Then I click on <button1> button
    Then I type <question> field
    Then I type <answer1> in the <opt1> field
    Then I type <answer2> in the <opt2> field
    Then I click on <button2> button
    Then text <text1> appears
    And text <text2> appears
    Examples:
      | title                    | button1         |button2| question    | ans |opt1        | opt2      | text1                    | text2                                                        |answer1          | answer2|
      #  Single Choice Question - Options - Required field - correct answer radio button
      | "!Required field"        | "Single-Choice" |"Save" | "Forgot"    |     |"Option 1"  |"Option 2" | "*Choose correct answer" |"Quiz is not completed. Check highlighted with \"red\" areas" | "Answer1"       | "Answer2" |


  Scenario Outline: Single Choice Question - forgot to type answer in Option 2 field
    Then I type <title> in the Title of the Quiz field
    Then I click on Add Question button
    Then I click on <button1> button
    Then I type <question> field
    Then I type <answer1> in the <opt1> field
    Then I click on Option <ans> radio button
    Then I click on <button2> button
    Then text <text1> appears
    And text <text2> appears
    Examples:
      | title                    | button1         |button2| question    | ans |opt1        | text1                    | text2                                                        |answer1      |
      #  Single Choice Question - Options - Required field - forgot to type answer in Option 2 field
      | "!Forgot to type answer" | "Single-Choice" |"Save" | "Forgot"    |  1  |"Option 1"  | "This field is required" |"Quiz is not completed. Check highlighted with \"red\" areas" | "Answer1"   |


  Scenario: Single Choice Question - Boundary Max 15 options
    Then I type "!Max 15 options" in the Title of the Quiz field
    Then I click on Add Question button
    Then I click on "Single-Choice" button
    Then I type "Max 15 options" field
    Then I type "Correct answer" in the "Option 1" field
    Then I type "Answer2" in the "Option 2" field
    Then I click on Add Option button 13 times
    Then I type "Answers" in the other 13 fields
    Then I click on Option 1 radio button
    Then I click on "Save" button
    Then text "List of Quizzes" appears
    And text "!Max 15 options" appears

  Scenario: Single Choice Question - Boundary More than Max 15 options
    Then I type "!More than max 15 options" in the Title of the Quiz field
    Then I click on Add Question button
    Then I click on "Single-Choice" button
    Then I type "Max 15 options" field
    Then I type "Correct answer" in the "Option 1" field
    Then I type "Answer2" in the "Option 2" field
    Then I click on Add Option button 14 times
    Then I type "Answers" in the other 14 fields
    Then I click on Option 1 radio button
    Then I click on "Save" button
    Then text "Quiz is not completed. Check highlighted with \"red\" areas" appears

  Scenario Outline: Single Choice Question - Options- Delete
    Then I type <title> in the Title of the Quiz field
    Then I click on Add Question button
    Then I click on <button1> button
    Then I type <question> field
    Then I type <answer1> in the <opt1> field
    Then I type <answer2> in the <opt2> field
    Then I click on Option <ans> radio button
    Then I click on "Add Option" button
    Then I type "Answer3" in the "Option 3" field
    Then I click on the icon-tool button next to Option 1 field
    Then I click on "Delete Option" button in icon-tool menu
    Then text <text1> appears
    Examples:
      | title             | button1         | question                  | ans |   opt1     |  opt2     | opt3     | text1                   |  answer1         | answer2   |answer3  |
      #  Single Choice Question - Options- Delete
      | "!Delete option"  | "Single-Choice" | "Try to Delete Option 1"  |  1  |"Option 1"  |"Option 2" |Option 3"  |"*Choose correct answer" | "Correct answer"| "Answer2"  |"Answer3" |

  Scenario Outline: Single Choice Question - Options- Move option up and down
    Then I type <title> in the Title of the Quiz field
    Then I click on Add Question button
    Then I click on <button1> button
    Then I type <question> field
    Then I type <answer1> in the <opt1> field
    Then I type <answer2> in the <opt2> field
    Then I click on Option <ans> radio button
    Then I click on "Add Option" button
    Then I type "Answer3" in the "Option 3" field
    Then I click on the icon-tool button next to Option 1 field
    Then I click on "Move option down" button in icon-tool menu and verify that Option 1 becames Option 2
    Then I click on the icon-tool button next to Option 3 field
    Then I click on "Move option up" button in icon-tool menu and verify that Option 3 becames Option 2

    Examples:
      | title             | button1         | question             | ans |   opt1     |  opt2      |  answer1         | answer2   |
      #  Single Choice Question - Options- Delete
      | "!Move option"    | "Single-Choice" | "Try to Move Options" |  1  |"Option 1"  |"Option 2" | "Correct answer"| "Answer2"  |


  Scenario Outline: Single Choice Question - Include "Other" text area option
    Then I type <title> in the Title of the Quiz field
    Then I click on Add Question button
    Then I click on <button1> button
    Then I type <question> field
    Then I type <answer1> in the <opt1> field
    Then I type <answer2> in the <opt2> field
    Then I click on Option <ans> radio button
    Then I click on "Include \"Other\" text area option for this " button
    Then I click on <button2> button
    Then text <text1> appears
    Then I click on <title> button
    Then I click on "Preview" button inside Quiz with <title>
    And text <text2> appears
    Examples:
      | title                   | button1         |button2| question    | ans |opt1        | opt2      | text1                    | text2                        |answer1          | answer2         |
      #  Single Choice Question - Options - positive
      | "!SingleChoice - Other" | "Single-Choice" |"Save" | "Positive"  |  1  |"Option 1"  |"Option 2" | "!SingleChoice - Other"   |"Other"      | "Correct answer"| "Wrong answer"  |


  Scenario Outline: Single Choice Question - Edit
    Then I type <title> in the Title of the Quiz field
    Then I click on Add Question button
    Then I click on <button1> button
    Then I type <question> field
    Then I type <answer1> in the <opt1> field
    Then I type <answer2> in the <opt2> field
    Then I click on Option <ans> radio button
    Then I click on <button2> button
    Then text <text1> appears
    Then I click on <title> button
    Then I click on "Edit" button inside Quiz with <title>
    Then I click on <question> button
    Then I add text "New" in the Option 2
    Then I click on <button2> button
    Then I click on <title> button
    Then I click on "Preview" button inside Quiz with <title>
    And text "New" appears
    Examples:
      | title                   | button1         |button2| question    | ans |opt1        | opt2      | text1                     |answer1          | answer2         |
      #  Single Choice Question - Options - positive
      | "!SingleChoice - Edit0" | "Single-Choice" |"Save" | "Positive"  |  1  |"Option 1"  |"Option 2" | "!SingleChoice - Edit0"   | "Correct answer"| "Wrong answer"  |
