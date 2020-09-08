Feature: Single Choice Question - Other text area

  Background:
    Given I open "login" page
    When I type email "paybear.test@gmail.com"
    And I type password "t3stP@ss"
    And I click Sign in button
    Then Text "NewTeacher Volga" appears
    And Text "TEACHER" appears

  Scenario: Single Choice Question - Other text area - Alphanumeric and Special characters
    When I click on Quizzes
    And I wait 10 seconds
    And I click [Create New Quizz] button
    And I wait 3 seconds
    And I enter "Number" quiz title on Create Quiz page
    And I click [Add Question] button
    And I select Single-choice option in Question type checkbox
    And I enter "1234?" question text in Question field
    And I enter "12" text in Option1 field
    And I enter "56" text in Option2 field
    And I select option2 as a correct answer in Question checkbox
    And I check Include Other text area option for this question?
    And I click [Preview] button
    And I enter "Test123@@@$#%" text in Other field
    And I click out of Other text area
    Then text "Test123@@@$#%" appears

  Scenario: Single Choice Question - Other text area - max +1
    When I click on Quizzes
    And I wait 10 seconds
    And I click [Create New Quizz] button
    And I wait 3 seconds
    And I enter "NumberM" quiz title on Create Quiz page
    And I click [Add Question] button
    And I select Single-choice option in Question type checkbox
    And I enter "1234?" question text in Question field
    And I enter "12" text in Option1 field
    And I enter "56" text in Option2 field
    And I select option2 as a correct answer in Question checkbox
    And I check Include Other text area option for this question?
    And I click [Preview] button
    Then I see Other text field
    And I click [Close] button
    And I click [Save] button
    And I wait 10 seconds
    And I select Assignments
    And I click [Create New Assignment] button
    And I wait 10 seconds
    And I click on Select Quiz to assign select box
    And I select "NumberM" name of Quiz in Quiz to assign select box
    And I select "Student2 Volga" in the Users list on Give Assignment page
    And I click [Give Assignment] button
    And I click [Log Out] button
    And I confirm Log Out on Confirmation popup
    And I type email "paybear.test+2@gmail.com"
    And I type password "t3stP@ss"
    And I click Sign in button
    And I select My Assignments
    And I click [Go To My Assignments] button
    And I wait 10 seconds
    And I click [Go To Assessment] button related to "NumberM" quiz
    And I select "56" text as answer on Question
    And I type 1001 characters into Other text field
    And I click [Submit My Answer] button Assessment page
    And I wait 10 seconds
    And I click [Ok] button on Success alert
    And I click [Log Out] button
    And I confirm Log Out on Confirmation popup
    And I wait 5 seconds
    And I type email "paybear.test@gmail.com"
    And I type password "t3stP@ss"
    And I click Sign in button
    And I select Submissions
    And I select Automatically Graded
    And I wait 5 seconds
    And I click [Review] button related to "Student2 Volga" student and "NumberM" quiz
    Then I validate Other text area contains 1006 characters

  Scenario: Single Choice Question - Other text area - Maximum length
    When I click on Quizzes
    And I wait 10 seconds
    And I click [Create New Quizz] button
    And I wait 3 seconds
    And I enter "NumberM" quiz title on Create Quiz page
    And I click [Add Question] button
    And I select Single-choice option in Question type checkbox
    And I enter "1234?" question text in Question field
    And I enter "12" text in Option1 field
    And I enter "56" text in Option2 field
    And I select option2 as a correct answer in Question checkbox
    And I check Include Other text area option for this question?
    And I click [Preview] button
    Then I see Other text field
    And I click [Close] button
    And I click [Save] button
    And I wait 10 seconds
    And I select Assignments
    And I click [Create New Assignment] button
    And I wait 10 seconds
    And I click on Select Quiz to assign select box
    And I select "NumberM" name of Quiz in Quiz to assign select box
    And I select "Student2 Volga" in the Users list on Give Assignment page
    And I click [Give Assignment] button
    And I click [Log Out] button
    And I confirm Log Out on Confirmation popup
    And I wait 3 seconds
    And I type email "paybear.test+2@gmail.com"
    And I type password "t3stP@ss"
    And I click Sign in button
    And I select My Assignments
    And I click [Go To My Assignments] button
    And I wait 10 seconds
    And I click [Go To Assessment] button related to "NumberM" quiz
    And I select "56" text as answer on Question
    And I type 1000 characters into Other text field
    And I click [Submit My Answer] button Assessment page
    And I wait 10 seconds
    And I click [Ok] button on Success alert
    And I click [Log Out] button
    And I confirm Log Out on Confirmation popup
    And I wait 5 seconds
    And I type email "paybear.test@gmail.com"
    And I type password "t3stP@ss"
    And I click Sign in button
    And I select Submissions
    And I select Automatically Graded
    And I wait 5 seconds
    And I click [Review] button related to "Student2 Volga" student and "NumberM" quiz
    Then I validate Other text area contains 1000 characters

    Scenario: Single Choice Question - Other text area - Teacher could select 'Other'
      When I click on Quizzes
      And I wait 10 seconds
      And I click [Create New Quizz] button
      And I wait 3 seconds
      And I enter "Number" quiz title on Create Quiz page
      And I click [Add Question] button
      And I select Single-choice option in Question type checkbox
      And I enter "1234?" question text in Question field
      And I enter "12" text in Option1 field
      And I enter "56" text in Option2 field
      And I select option2 as a correct answer in Question checkbox
      And I check Include Other text area option for this question?
      And I click [Preview] button
      Then Other text area appears on PREVIEW MODE popup








