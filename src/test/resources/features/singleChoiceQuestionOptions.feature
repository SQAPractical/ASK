@FullRegression
Feature: Single Choice Question - Options
  #AC12-181
  Scenario: Single Choice Question - Options - Create single choice question
    When I navigate to page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I navigate to quizzes page
    And I create a new quiz
    And I write title of quiz "Single Option Test 1"
    And I click on Add Question
    And I click choose single choice question
    And I write question title "Question #1"
    And I write optionFirst "Option #1"
    And I write optionSecond "Option #2"
    And I choose default option
    Then I save the quiz

    #AC12-280
  Scenario: Single Choice Question - Options - Question can't be empty
    When I navigate to page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I navigate to quizzes page
    And I create a new quiz
    And I write title of quiz "Single Option Test 1"
    And I click on Add Question
    And I click choose single choice question
    And I write question title "Question #1"
    And I write optionFirst "Option #1"
    And I save the quiz
    Then Message "This field is required" appears

  #AC12-190
  Scenario: Single Choice Question - Options - Test with 15 options
    When I navigate to page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I navigate to quizzes page
    And I create a new quiz
    And I write title of quiz "Single Option Test 1"
    And I click on Add Question
    And I click choose single choice question
    And I write question title "Question #1"
    And I write optionFirst "Option #1"
    And I choose default option
    And I write optionSecond "Option #2"
    And I Add option
    And I write optionThird "Option #3"
    And I Add option
    And I write optionFour "Option #4"
    And I Add option
    And I write optionFive "Option #5"
    And I Add option
    And I write optionSix "Option #6"
    And I Add option
    And I write optionSeven "Option #7"
    And I Add option
    And I write optionEight "Option #8"
    And I Add option
    And I write optionNine "Option #9"
    And I Add option
    And I write optionTen "Option #10"
    Then I save the quiz
  #AC12-193
  Scenario: Single Choice Question - Options - Test with excessive number of options
    When I navigate to page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I navigate to quizzes page
    And I create a new quiz
    And I write title of quiz "Single Option Test 1"
    And I click on Add Question
    And I click choose single choice question
    And I write question title "Question #1"
    And I write optionFirst "Option #1"
    And I choose default option
    And I write optionSecond "Option #2"
    And I Add option
    And I write optionThird "Option #3"
    And I Add option
    And I write optionFour "Option #4"
    And I Add option
    And I write optionFive "Option #5"
    And I Add option
    And I write optionSix "Option #6"
    And I Add option
    And I write optionSeven "Option #7"
    And I Add option
    And I write optionEight "Option #8"
    And I Add option
    And I write optionNine "Option #9"
    And I Add option
    And I write optionTen "Option #10"
    And I Add option
    And I write optionEleven "Option #11"
    And I Add option
    And I write optionTwelve "Option #12"
    And I Add option
    And I write optionThirteen "Option #13"
    And I Add option
    And I write optionFourteen "Option #14"
    And I Add option
    And I write optionFifteen "Option #15"
    And I Add option
    And I write optionSixteen "Option #16"
    Then I save the quiz


  #AC14-441
  Scenario: Change User's Role
    When I navigate to page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I navigate to users management
    And I navigate to Alla Shepelenko student profile
    And I click Options
    And I change role
    Then I confirm to change role
