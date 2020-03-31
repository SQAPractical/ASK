#Lada
Feature: Multiple Choice Question - Options
  @LadaFive
  Scenario: Multiple Choice Question - 1 Options
    Given I login on page
    Then I type Email "lada.idy@gmail.com"
    And I type Password "11111"
    When I click button "Sign In"
    Then I should see page title name "Assessment Control @ Portnov"
    Then I click on an element "Quizzes"
    And wait for element "List of Quizzes" should be present
    Then I click on an element "Create New Quiz"
    Then wait for element "Title Of The Quiz *" should be present
    Then I type quiz title "Question"
    Then I click on button add question
    Then I click choose multiple-choice
    And element "Multiple-Choice" should be select
    Then I type question title "Why QA?"
    And I type answer "like it" into options field one
    And option field one should contain attribute "value" as "like it"
    Then I click on check box option one
    And check box one should be selected
    Then I click button "Save"
    Then wait for element "Quiz is not completed" should be present

########################################################################
  Scenario: Multiple Choice Question - 2 Options
    Given I login on page
    Then I type Email "lada.idy@gmail.com"
    And I type Password "11111"
    When I click button "Sign In"
    Then I should see page title name "Assessment Control @ Portnov"
    Then I click on an element "Quizzes"
    And wait for element "List of Quizzes" should be present
    Then I click on an element "Create New Quiz"
    Then wait for element "Title Of The Quiz *" should be present
    Then I type quiz title "Question"
    Then I click on button add question
    Then I click choose multiple-choice
    And element "Multiple-Choice" should be select
    Then I type question title "Why QA?"
    And I type answer "like it" into options field one
    And option field one should contain attribute "value" as "like it"
    Then I click on check box option one
    And check box one should be selected
    Then I type answer "need work" into options field two
    And option field two should contain attribute "value" as "need work"
    Then I click on check box option two
    And check box two should be selected
    Then I click button "Save"
    Then wait for element "List of Quizzes" should be present

   #############################################################
  Scenario: Multiple Choice Question - 15 Options
    Given I login on page
    Then I type Email "lada.idy@gmail.com"
    And I type Password "11111"
    When I click button "Sign In"
    Then I should see page title name "Assessment Control @ Portnov"
    Then I click on an element "Quizzes"
    And wait for element "List of Quizzes" should be present
    Then I click on an element "Create New Quiz"
    Then wait for element "Title Of The Quiz *" should be present
    Then I type quiz title "Question"
    Then I click on button add question
    Then I click choose multiple-choice
    And element "Multiple-Choice" should be select
    Then wait for element "Question *" should be present
    Then I type question title "Why QA?"
    Then I add option 14 field
    And I fill out all option field
    Then I click button "Save"
    Then wait for element "List of Quizzes" should be present













