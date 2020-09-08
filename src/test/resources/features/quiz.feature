Feature: Quiz - Total Questions
  Scenario: Verify if a new quiz needs a minimum of 1 question
    Given I open "login" page
    When I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign in button
    And I wait 3 seconds
    Then Text "TEACHER" appears
    And I click Quizzes button
    And I click Create new quiz
    Then I type title of the quiz "SQA Quiz"
    And I click Add question


  Scenario: Verify if max number of questions possible is 50
    Given I open "login" page
    When I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign in button
    And I wait 3 seconds
    Then Text "TEACHER" appears
    And I click Quizzes button
    And I click Create new quiz
    Then I type title of the quiz "SQA Quiz"
    And I click Add question
    Then Text "Q1" appears
    Then I click another Add Question max button
    Then Text "Q50" appears

  Scenario: Verify if quiz will allow 51 questions
    Given I open "login" page
    When I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign in button
    And I wait 3 seconds
    Then Text "TEACHER" appears
    And I click Quizzes button
    And I click Create new quiz
    Then I type title of the quiz "SQA Quiz"
    And I click Add question
    Then Text "Q1" appears
    Then I click another Add Question max+one button
    Then Text "Q51" appears

#Feature: Quiz - Title
# Extra practices
# /In order to do without creating new feature file and making the code complicated,
# I attached all test automation for Quiz subject here/

  @quizTitle1
  Scenario: Quiz - Title - field is required
    Given I open "login" page
    When I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign in button
    And I wait 3 seconds
    Then Text "TEACHER" appears
    And I click Quizzes button
    And I click Create new quiz
    And I click Title of the quiz field
    And I click outside of Title of the quiz field
    Then Text "This field is required" appears

  @quizTitle2
  Scenario: Verify that teacher can create Quiz with Alphanumeric & Sp. characters in 'Title'
    Given I open "login" page
    When I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign in button
    And I wait 3 seconds
    Then Text "TEACHER" appears
    And I click Quizzes button
    And I click Create new quiz
    Then I type title of the quiz "SuvdaaAutoTest123$%"
    And I click Add question
    Then Text "Q1" appears
    Then I select Textual question type
    And I type text of question "test question"
    And I click Save button
    Then Quiz "SuvdaaAutoTest123$%" is saved in list of quizzes

  @quizTitle3
    Scenario: Verify if teacher can create quiz with 1 char in Title
      Given I open "login" page
      When I type email "qa.sofi@gmail.com"
      And I type password "12345"
      And I click Sign in button
      And I wait 3 seconds
      Then Text "TEACHER" appears
      And I click Quizzes button
      And I click Create new quiz
      Then I type title of the quiz "s"
      And I click Add question
      Then Text "Q1" appears
      Then I select Textual question type
      And I type text of question "test question"
      And I click Save button
      Then Quiz "s" is saved in list of quizzes

  @quizTitle4
    Scenario: Verify if teacher can create quiz with 1000 char in Title
      Given I open "login" page
      When I type email "qa.sofi@gmail.com"
      And I type password "12345"
      And I click Sign in button
      And I wait 3 seconds
      Then Text "TEACHER" appears
      And I click Quizzes button
      And I click Create new quiz
      Then I type title of the quiz "ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss"
      And I click Add question
      Then Text "Q1" appears
      Then I select Textual question type
      And I type text of question "test question"
      And I click Save button
      Then Quiz "ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss" is saved in list of quizzes

  @quizTitle5
  Scenario: Verify if teacher can't create quiz with 1001 char in Title
    Given I open "login" page
    When I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign in button
    And I wait 3 seconds
    Then Text "TEACHER" appears
    And I click Quizzes button
    And I click Create new quiz
    Then I type title of the quiz "sssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss"
    And I click Add question
    Then Text "Too long. Should be no more than 1000 characters" appears

  @quizTitle6
  Scenario: Quiz - Title - Leading and trailing space characters
    Given I open "login" page
    When I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign in button
    And I wait 3 seconds
    Then Text "TEACHER" appears
    And I click Quizzes button
    And I click Create new quiz
    Then I type title of the quiz " 123LeadingSpases "
    And I click Add question
    Then Text "Q1" appears
    Then I select Textual question type
    And I type text of question "test question"
    And I click Save button
    Then Quiz "123LeadingSpases" is saved in list of quizzes
