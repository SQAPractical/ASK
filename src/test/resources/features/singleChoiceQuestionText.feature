Feature: Single Choice Question - Text
  @Smoke
  Scenario: Single Choice Question - Text - Alphanumeric and spec char
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And Element with text "Log Out" is displayed on home page
    And I click on Quizzes menu button
    And Element with text "List of Quizzes" is displayed on the top
    And I click on Create New Quiz button
    And Element with text "Title Of The Quiz" is displayed on new quiz form
    And I type title of the quiz "Single Choice Text TO"
    And I click on Add Question button
    And Element with text "Q1: new empty form" is displayed on quiz form
    And I click on Single-Choice button
    And Element with text "Question*" is displayed on single choice question form
    And I type question "123!@#N_"
    And I type firstOption  "True456%^&"
    And I type secondOption "False789*()"
    And I click on firstOption button as correct answer
    And I click on Save button
    Then Element with text "List of Quizzes" is displayed on the top


    Scenario:   Single Choice Question - Text - Field required
      When I navigate to login page
      And I type email "teacher1@gmail.com"
      And I type password "12345Abc"
      And I click on Sign In button
      And Element with text "Log Out" is displayed on home page
      And I click on Quizzes menu button
      And Element with text "List of Quizzes" is displayed on the top
      And I click on Create New Quiz button
      And Element with text "Title Of The Quiz" is displayed on new quiz form
      And I type title of the quiz "Single Choice Text TO"
      And I click on Add Question button
      And Element with text "Q1: new empty form" is displayed on quiz form
      And I click on Single-Choice button
      And Element with text "Question*" is displayed on single choice question form
      And I type firstOption  "True456%^&"
      And I type secondOption "False789*()"
      And I click on firstOption button as correct answer
      And I click on Save button
      Then Message "This field is required" displayed on single choice question field
      Then Pop-up message "Quiz is not completed. Check highlighted with red areas" appears

      Scenario: Single Choice Question - Text - Min characters - Letter
        When I navigate to login page
        And I type email "teacher1@gmail.com"
        And I type password "12345Abc"
        And I click on Sign In button
        And Element with text "Log Out" is displayed on home page
        And I click on Quizzes menu button
        And Element with text "List of Quizzes" is displayed on the top
        And I click on Create New Quiz button
        And Element with text "Title Of The Quiz" is displayed on new quiz form
        And I type title of the quiz "Single Choice Text TO"
        And I click on Add Question button
        And Element with text "Q1: new empty form" is displayed on quiz form
        And I click on Single-Choice button
        And Element with text "Question*" is displayed on single choice question form
        And I type question "A"
        And I type firstOption  "True456%^&"
        And I type secondOption "False789*()"
        And I click on firstOption button as correct answer
        And I click on Save button
        Then Element with text "List of Quizzes" is displayed on the top

  Scenario: Single Choice Question - Text - Min characters - Digit
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And Element with text "Log Out" is displayed on home page
    And I click on Quizzes menu button
    And Element with text "List of Quizzes" is displayed on the top
    And I click on Create New Quiz button
    And Element with text "Title Of The Quiz" is displayed on new quiz form
    And I type title of the quiz "Single Choice Text TO"
    And I click on Add Question button
    And Element with text "Q1: new empty form" is displayed on quiz form
    And I click on Single-Choice button
    And Element with text "Question*" is displayed on single choice question form
    And I type question "1"
    And I type firstOption  "True456%^&"
    And I type secondOption "False789*()"
    And I click on firstOption button as correct answer
    And I click on Save button
    Then Element with text "List of Quizzes" is displayed on the top

  Scenario: Single Choice Question - Text - Min characters - Special Char
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And Element with text "Log Out" is displayed on home page
    And I click on Quizzes menu button
    And Element with text "List of Quizzes" is displayed on the top
    And I click on Create New Quiz button
    And Element with text "Title Of The Quiz" is displayed on new quiz form
    And I type title of the quiz "Single Choice Text TO"
    And I click on Add Question button
    And Element with text "Q1: new empty form" is displayed on quiz form
    And I click on Single-Choice button
    And Element with text "Question*" is displayed on single choice question form
    And I type question "@"
    And I type firstOption  "True456%^&"
    And I type secondOption "False789*()"
    And I click on firstOption button as correct answer
    And I click on Save button
    Then Element with text "List of Quizzes" is displayed on the top

  Scenario: Single Choice Question - Text - Max characters
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And Element with text "Log Out" is displayed on home page
    And I click on Quizzes menu button
    And Element with text "List of Quizzes" is displayed on the top
    And I click on Create New Quiz button
    And Element with text "Title Of The Quiz" is displayed on new quiz form
    And I type title of the quiz "Single Choice Text TO"
    And I click on Add Question button
    And Element with text "Q1: new empty form" is displayed on quiz form
    And I click on Single-Choice button
    And Element with text "Question*" is displayed on single choice question form
    And I type question "abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@"
    And I type firstOption  "True456%^&"
    And I type secondOption "False789*()"
    And I click on firstOption button as correct answer
    And I click on Save button
    Then Element with text "List of Quizzes" is displayed on the top

  Scenario: Single Choice Question - Text - Max char + 1
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And Element with text "Log Out" is displayed on home page
    And I click on Quizzes menu button
    And Element with text "List of Quizzes" is displayed on the top
    And I click on Create New Quiz button
    And Element with text "Title Of The Quiz" is displayed on new quiz form
    And I type title of the quiz "Single Choice Text TO"
    And I click on Add Question button
    And Element with text "Q1: new empty form" is displayed on quiz form
    And I click on Single-Choice button
    And Element with text "Question*" is displayed on single choice question form
    And I type question "Aabcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@#$%abcdefg12345!@"
    And I type firstOption  "True456%^&"
    And I type secondOption "False789*()"
    And I click on firstOption button as correct answer
    And I click on Save button
    Then Element with text "List of Quizzes" is not displayed on the top  because of error