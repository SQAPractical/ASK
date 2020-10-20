Feature: Textual Question_Text

  Scenario Outline: Textual Question - Text - Alphanumeric characters is allowable
    Given I open <pageName> page
    When I type email <email> on login page
    And I type password <password> on login page
    And I click Sign in button
    And I click quizzes on left menu
    And should wait
    And I click on Create New Quiz at the bottom of the page
    Then I type "MyQuiz3" in Title Of The Quiz field
    And I click Add Question underneath the Title
    Then I click Textual check-box
    And I type the question "Describe 3 types of testing that you used during your previous work" in to Question field
    And I click SAVE on the bottom right corner
    And should wait
    Then Text "MyQuiz3" appears
    Then I click on created quiz "MyQuiz3" from the Quiz List
    And I click delete button
    Then I click delete on Conformation message
    Examples:
      | pageName | email              | password |
      | "login"  | "qa.sofi@gmail.com" | "12345"  |

  Scenario Outline: Textual Question - Text - Special characters characters is allowable
    Given I open <pageName> page
    When I type email <email> on login page
    And I type password <password> on login page
    And I click Sign in button
    And I click quizzes on left menu
    And should wait
    And I click on Create New Quiz at the bottom of the page
    Then I type "MyQuiz3" in Title Of The Quiz field
    And I click Add Question underneath the Title
    Then I click Textual check-box
    And I type the question "Describe 3 types of testing !/@#$%^&*()_+'\|.,~" in to Question field
    And I click SAVE on the bottom right corner
    And should wait
    Then Text "MyQuiz3" appears
    Then I click on created quiz "MyQuiz3" from the Quiz List
    And I click delete button
    Then I click delete on Conformation message
    Examples:
      | pageName | email              | password |
      | "login"  | "qa.sofi@gmail.com" | "12345"  |

  Scenario Outline: Textual Question - Text - Question with 1 Character
    Given I open <pageName> page
    When I type email <email> on login page
    And I type password <password> on login page
    And I click Sign in button
    And I click quizzes on left menu
    And should wait
    And I click on Create New Quiz at the bottom of the page
    Then I type "MyQuiz3" in Title Of The Quiz field
    And I click Add Question underneath the Title
    Then I click Textual check-box
    And I type the question "A" in to Question field
    And I click SAVE on the bottom right corner
    And should wait
    Then Text "MyQuiz3" appears
    Then I click on created quiz "MyQuiz3" from the Quiz List
    And I click delete button
    Then I click delete on Conformation message

    Examples:
      | pageName | email              | password |
      | "login"  | "qa.sofi@gmail.com" | "12345"  |

  Scenario Outline: Textual Question - Text - Question with 1000 characters
    Given I open <pageName> page
    When I type email <email> on login page
    And I type password <password> on login page
    And I click Sign in button
    And I click quizzes on left menu
    And should wait
    And I click on Create New Quiz at the bottom of the page
    Then I type "MyQuiz3" in Title Of The Quiz field
    And I click Add Question underneath the Title
    Then I click Textual check-box
    And I type the question "MyTest1!cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc" in to Question field
    And I click SAVE on the bottom right corner
    And should wait
    Then Text "MyQuiz3" appears
    Then I click on created quiz "MyQuiz3" from the Quiz List
    And I click delete button
    Then I click delete on Conformation message

    Examples:
      | pageName | email              | password |
      | "login"  | "qa.sofi@gmail.com" | "12345"  |

  Scenario Outline: Textual Question - Text - Question with 1001 characters
    Given I open <pageName> page
    When I type email <email> on login page
    And I type password <password> on login page
    And I click Sign in button
    And I click quizzes on left menu
    And should wait
    And I click on Create New Quiz at the bottom of the page
    Then I type "MyQuiz3" in Title Of The Quiz field
    And I click Add Question underneath the Title
    Then I click Textual check-box
    And I type the question "MyTest1!ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc" in to Question field
    And I click SAVE on the bottom right corner
    Then Text "Too long" appears

    Examples:
      | pageName | email              | password |
      | "login"  | "qa.sofi@gmail.com" | "12345"  |

  Scenario Outline: Textual Question - Text - The field is required
    Given I open <pageName> page
    When I type email <email> on login page
    And I type password <password> on login page
    And I click Sign in button
    And I click quizzes on left menu
    And should wait
    And I click on Create New Quiz at the bottom of the page
    Then I type "MyQuiz3" in Title Of The Quiz field
    And I click Add Question underneath the Title
    Then I click Textual check-box
    And I click SAVE on the bottom right corner
    And should wait
    Then Text "This field is required" appears
    Examples:
      | pageName | email              | password |
      | "login"  | "qa.sofi@gmail.com" | "12345"  |

  Scenario Outline: Textual Question - Text - Only spaces are not allowed
    Given I open <pageName> page
    When I type email <email> on login page
    And I type password <password> on login page
    And I click Sign in button
    And I click quizzes on left menu
    And I click on Create New Quiz at the bottom of the page
    Then I type "MyQuiz3" in Title Of The Quiz field
    And I click Add Question underneath the Title
    Then I click Textual check-box
    And I type the question " " in to Question field
    And I click SAVE on the bottom right corner
    Then Text "This field is required" appears
    Examples:
      | pageName | email              | password |
      | "login"  | "qa.sofi@gmail.com" | "12345"  |

  #Scenario Outline: Test
   # Given I open <pageName> page
   # When I type email <email> on login page
   # And I type password <password> on login page
   # And I click Sign in button
    #And I click quizzes on left menu
   # Then I click on created quiz "MyQuiz3" from the Quiz List
    #And I click delete button
    #Then I click delete on Conformation message

#    Examples:
#      | pageName | email              | password |
#      | "login"  | "qa.sofi@gmail.com" | "12345"  |
#
