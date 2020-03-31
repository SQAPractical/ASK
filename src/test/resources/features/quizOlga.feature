#Feature: olgaStepDef
#
#  @olgaStepDef_Iurii2
#  Scenario: Quiz - Total Questions - Quiz can't be created without questions
#    Given I navigate to login page
#    When I type email "araltan.qae12@gmail.com"
#    And I type password "Araltan123"
#    And I click "Sign In" button
#    And I click on Quizzes
#    And I click "Create New Quiz" button
#    And I should see Title Of The Quiz *
#    And I type on Title Of The Quiz "Name"
#    And I can click on Save button, button is disable
#
#  @olgaStepDef_Iurii1
#  Scenario: Quiz - Total Questions - Quiz can be created with 1 question or more
#    Given I navigate to login page
#    When I type email "araltan.qae12@gmail.com"
#    And I type password "Araltan123"
#    And I click "Sign In" button
#    And I click on Quizzes
#    And I click "Create New Quiz" button
#    And I should see Title Of The Quiz *
#    And I type on Title Of The Quiz "Name"
#    And I click Add Question button
#    And I click Textual radio button
#    And I type question for Textual "Intrebare?"
#    And I click "Save" button
#
#  @olgaStepDef_Iurii_3
#  Scenario: Quiz - Total Questions - Quiz can be created with 50 question max
#    Given I navigate to login page
#    When I type email "araltan.qae12@gmail.com"
#    And I type password "Araltan123"
#    And I click "Sign In" button
#    And I click on Quizzes
#    And I click "Create New Quiz" button
#    And I should see Title Of The Quiz *
#    And I type on Title Of The Quiz "Name"
#    And I click Add Question button
#    And I type 50 questions for Textual area
#    And I click Add Question button
#    And I click "Save" button
#
#
##    And I type on Title Of The Quiz " Serie A"
##    And I click Add Question button
##    Then I click Single-Choice radio button
##    And I type question "Which team won most title in Italy?"
##    And I type in option1 "Juvensus"
##    And I type in option2 "Milan"
##    And I click "Save" button
#
##  @olgaStepDef1000
##  Scenario: Single Choice Question - Options
##    Given I navigate to login page
##    When I type email "araltan.qae12@gmail.com"
##    And I type password "Araltan123"
##    And I click "Sign In" button
##    And I click on Quizzes
##    And I click "Create New Quiz" button
##    And I should see Title Of The Quiz *
##    And I type on Title Of The Quiz " Serie A"
##    And I click Add Question button
##    Then I click Single-Choice radio button
##    And I type question "Which team won most title in Italy?"
##    And I type in option1 "Juvensus"
##    And I type in option2 "Milan"
##    And I click "Save" button


#  @olgaStepDef1001
#  Scenario: Single Choice Question - Options 2
#    Given I navigate to login page
#    When I type email "araltan.qae12@gmail.com"
#    And I type password "Araltan123"
#    And I click "Sign In" button
#    And I click on Quizzes
#    And I click "Create New Quiz" button
#    And I should see Title Of The Quiz *
#    And I type on Title Of The Quiz " Serie A"
#    And I click Add Question button
#    Then I click Single-Choice radio button
#    And I type question "Which city represent  FC Sampdoria?"
#    And I type in option1 "Genova"
#    And I type in option2 ""
#    And I click on element out of field
#    Then I see error message "This field is required"
#    And I click "Save" button
#

#  @olgaStepDef1003
#  Scenario: Single Choice Question - Options 15
#    Given I navigate to login page
#    When I type email "araltan.qae12@gmail.com"
#    And I type password "Araltan123"
#    And I click "Sign In" button
#    And I click on Quizzes
#    And I click "Create New Quiz" button
#    And I should see Title Of The Quiz *
#    And I type on Title Of The Quiz " Serie A"
#    And I click Add Question button
#    Then I click Single-Choice radio button
#    And I type question "Which team played Paul Pogba?"
#    And I type in option1 "Genova"
#    And I type in option2 "Italy"
#    And I click Add Option button
#    And I type in option3 "Genovdcsa"
#    And I click Add Option button
#    And I type in option4 "asd"
#    And I click Add Option button
#    And I type in option5 "Gendsdsova"
#    And I click Add Option button
#    And I type in option6 "add"
#    And I click Add Option button
#    And I type in option7 "Genovcdsa"
#    And I click Add Option button
#    And I type in option8 "asda"
#    And I click Add Option button
#    And I type in option9 "Gedsnova"
#    And I click Add Option button
#    And I type in option10 "asd"
#    And I click Add Option button
#    And I type in option11 "Gedsnova"
#    And I click Add Option button
#    And I type in option12 "asda"
#    And I click Add Option button
#    And I type in option13 "Gendsova"
#    And I click Add Option button
#    And I type in option14 "adsa"
#    And I click Add Option button
#    And I type in option15 "Gedsnova"
#    And I click "Save" button
#
#
#  @olgaStepDef1003
#  Scenario: Single Choice Question - Options 15+1
#    Given I navigate to login page
#    When I type email "araltan.qae12@gmail.com"
#    And I type password "Araltan123"
#    And I click "Sign In" button
#    And I click on Quizzes
#    And I click "Create New Quiz" button
#    And I should see Title Of The Quiz *
#    And I type on Title Of The Quiz " Serie A"
#    And I click Add Question button
#    Then I click Single-Choice radio button
#    And I type question "Which team played Paul Pogba?"
#    And I type in option1 "Genova"
#    And I type in option2 "Italy"
#    And I click Add Option button
#    And I type in option3 "Genovdcsa"
#    And I click Add Option button
#    And I type in option4 "asd"
#    And I click Add Option button
#    And I type in option5 "Gendsdsova"
#    And I click Add Option button
#    And I type in option6 "add"
#    And I click Add Option button
#    And I type in option7 "Genovcdsa"
#    And I click Add Option button
#    And I type in option8 "asda"
#    And I click Add Option button
#    And I type in option9 "Gedsnova"
#    And I click Add Option button
#    And I type in option10 "asd"
#    And I click Add Option button
#    And I type in option11 "Gedsnova"
#    And I click Add Option button
#    And I type in option12 "asda"
#    And I click Add Option button
#    And I type in option13 "Gendsova"
#    And I click Add Option button
#    And I type in option14 "adsa"
#    And I click Add Option button
#    And I type in option15 "Gedsnova"
#    And I click Add Option button
#    And I type in option16 "Torino"
#    And I click "Save" button
##    Then I see error message "AA"
#    And element with Xpath sould be display


#  Background:
#    Given I navigate to login page
#    When I type email "olgaqatester@gmail.com"
#    And I type password "123456"
#    And I click "Sign In" button
#    And I click on Quizzes
#    And I click "Create New Quiz" button
#    And I should see Title Of The Quiz *
#
##  @olgaStepDef1
#    And I type on Title Of The Quiz "Name of Quiz"
#    Then I click "  Add Question  " element
#    Then button Add Question should not appears


#  @olgaStepDef0
#  Scenario Outline:
#    When I type email <email>
#    And I type password <password>
#    And I click <buttonName> button
#    And I click on Quizzes
#    And I click <buttonName> button
#    And I should see Title Of The Quiz *
#    And I type on Title Of The Quiz <quiztitle>
#    Then I click <arg0> element
#    Then button Add Question should not appears
#    Examples:
#      | email                    | password | buttonName        | quiztitle      | arg0               |
#      | "olgaqatester@gmail.com" | "123456" | "Create New Quiz" | "Name of Quiz" | "  Add Question  " |


#  @olgaStepDef3
#  Scenario: Login - Teacher - create Quiz
##    Given I navigate to login page
##    When I type email "olgaqatester@gmail.com"
##    And I type password "123456"
##    And I click "Sign In" button
##    Then I should see Title of page "Assessment Control @ Portnov"
##    And I click on Quizzes
##    And I click "Create New Quiz" button
##    And I should see Title Of The Quiz *
#    And I type on Title Of The Quiz "Name of Quiz"
#    Then I click "  Add Question  " element
#
#  @olgaStepDef4
#  Scenario: Login - Teacher - create Quiz - Add Question should not appears
#    And I click on Quizzes
#    And I click "Create New Quiz" button
#    Then button Add Question should not appears
#
#  @olgaStepsDef5
#  Scenario: Login -Teacher -create Quiz - Title of Quiz - Min 1 Characters
#    And I click on Quizzes
#    And I click "Create New Quiz" button
#    And I should see Title Of The Quiz *
#    And I type on Title Of The Quiz "A"
#    Then button Add Question should appears
#
#  @olgaStepsDef6
#  Scenario: Login -Teacher -create Quiz - Title of Quiz - Min 100 Characters
#    And I click on Quizzes
#    And I click "Create New Quiz" button
#    And I should see Title Of The Quiz *
#    And I type on Title Of The Quiz "0123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789"
#    Then button Add Question should appears
#
#  @olgaStepsDef7
#  Scenario: Login -Teacher -create Quiz - Title of Quiz - Min 101 Characters
#    And I click on Quizzes
#    And I click "Create New Quiz" button
#    And I should see Title Of The Quiz *
#    And I type on Title Of The Quiz "A0123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789"
#    Then button Add Question should appears