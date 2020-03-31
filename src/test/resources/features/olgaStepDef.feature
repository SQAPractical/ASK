Feature: olgaStepDef

#  //////////////////////////////////////////////////
#  ///// Short with Background
#  //////////////////////////////////////////////////
  Background: Login - Teacher - create Quiz
    Given I navigate to login page
    When I type email "olgaqatester@gmail.com"
    And I type password "123456"
    And I click "Sign In" button



  @olgaStepDef3
  Scenario: Login - Teacher - create Quiz
#    Given I navigate to login page
#    When I type email "olgaqatester@gmail.com"
#    And I type password "123456"
#    And I click "Sign In" button
#    Then I should see Title of page "Assessment Control @ Portnov"
    And I click on Quizzes
    And I click "Create New Quiz" button
    And I should see Title Of The Quiz *
    And I type on Title Of The Quiz "Name of Quiz"
    Then I click "  Add Question  " element

  @olgaStepDef4
  Scenario: Login - Teacher - create Quiz - Add Question should not appears
    And I click on Quizzes
    And I click "Create New Quiz" button
    Then button Add Question should not appears

  @olgaStepsDef5
  Scenario: Login -Teacher -create Quiz - Title of Quiz - Min 1 Characters
    And I click on Quizzes
    And I click "Create New Quiz" button
    And I should see Title Of The Quiz *
    And I type on Title Of The Quiz "A"
    Then button Add Question should appears

  @olgaStepsDef6
  Scenario: Login -Teacher -create Quiz - Title of Quiz - Min 100 Characters
    And I click on Quizzes
    And I click "Create New Quiz" button
    And I should see Title Of The Quiz *
    And I type on Title Of The Quiz "0123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789"
    Then button Add Question should appears

  @olgaStepsDef7
  Scenario: Login -Teacher -create Quiz - Title of Quiz - Min 101 Characters
    And I click on Quizzes
    And I click "Create New Quiz" button
    And I should see Title Of The Quiz *
    And I type on Title Of The Quiz "A0123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789"
    Then button Add Question should appears

#  ///////////////////////////////////////////////////////////
#  /////////// Background End
#  //////////////////////////////////////////////////////////


#  ///////////////////////////////////////////////////////////
#  /////////// Long Format
#  //////////////////////////////////////////////////////////

#  @olgaStepDef1
#  Scenario: Registration Last name
#    Given I navigate to registration page
#    And I type first name "Olga"
#    And I type last name "Test"
#    And I type group code "FT11"
#    And I type email "olgaTest@gmail.com"
#    And I type password "12345"
#    And I type confirm password "12345"
#    And I click "Register Me" button
#    Then message "You have been Registered." appears

#  @olgaStepDef2
#  Scenario: Registration - Group Code - field is required
#    Given I navigate to registration page
#    When I type first name "Olga"
#    And I type last name "Test"
#    And I type email "olgatest@gmail.com"
#    And I type group code ""
##    Then error message "This field is required" appears
#    And I type password "12345"
#    And I type confirm password "12345"
#    And I click "Register me" button
#    Then error message "This field is required" appears

#  @olgaStepDef3
#  Scenario: Login - Teacher - create Quiz
#    Given I navigate to login page
#    When I type email "olgaqatester@gmail.com"
#    And I type password "123456"
#    And I click "Sign In" button
#    Then I should see Title of page "Assessment Control @ Portnov"
#    And I click on Quizzes
#    And I click "Create New Quiz" button
#    And I should see Title Of The Quiz *
#    And I type on Title Of The Quiz "Name of Quiz"
#    Then I click "  Add Question  " element

#  @olgaStepDef4
#  Scenario: Registration - Group Code - field is required 2
#    Given I navigate to registration page
#    When I type first name "Ivan"
#    And I type last name "Ivanov"
#    And I type email "email@gmail.com"
#    And I type group code ""
#    And I type password "12345"
#    And I type confirm password "12345"
#    And I click "Register me" button
#    Then message "This field is required" appears


#  @olgaStepDef3New
#  Scenario: Login - Teacher - create Quiz
#    Given I navigate to login page
#    When I type email "olgaqatester@gmail.com"
#    And I type password "123456"
#    And I click Sign In button
#    Then I should see Title of page "Assessment Control @ Portnov"
#    And I click on Quizzes
#    And I click Create New Quiz button
#    And I should see Title Of The Quiz *
#    And I type on Title Of The Quiz "Name of Quiz"
#    Then I click Add Question button

#  ///////////////////////////////////////////////////////////
#  //////// Single Choice Question - Options - Positive
#  ///////////////////////////////////////////////////////////
  @olgaStepDef01
  Scenario: Single Choice Question - Options
#    And I click on Quizzes
#    And I click "Create New Quiz" button
#    And I should see Title Of The Quiz *
    And I type on Title Of The Quiz " Serie A"
    And I click "add Question" button
    Then I click Single-Choice radio button
     And I type question "Which team won most title in Italy?"
     And I type in option1 "Juvensus"
     And I type in option2 "Milan"
     And I click "Save" button
#    Then button Add Question should appears

#  ///////////////////////////////////////
#  /////////// Araltan test case
#  ////////////////////////////////////////

  #  Background:
#  Single Choice Question - Options
    Given I navigate to login page
    When I type email "araltan.qae12@gmail.com"
    And I type password "Araltan123"
    And I click "Sign In" button
    And I click on Quizzes
    And I click "Create New Quiz" button
    And I should see Title Of The Quiz *



  @olgaStepDef01
  Scenario: Single Choice Question - Options
    Given I navigate to login page
    When I type email "araltan.qae12@gmail.com"
    And I type password "Araltan123"
    And I click "Sign In" button
    And I click on Quizzes
    And I click "Create New Quiz" button
    And I should see Title Of The Quiz *
    And I type on Title Of The Quiz " Serie A"
    And I click "add Question" button
    Then I click Single-Choice radio button
    And I type question "Which team won most title in Italy?"
    And I type in option1 "Juvensus"
    And I type in option2 "Milan"
    And I click "Save" button
#    Then button Add Question should appears