Feature: Quiz title

  Background:
    Given I open "login" page

    Scenario: Create Quiz with Alphanumeric & Sp. characters in 'Title'
      When I type email "elizabethstaging@gmail.com"
      And I type password "Pmej1234"
      And I click Sign in button
      Then Text "TEACHER" appears
      And I click Quizzes
      And I click create new Quiz button
      And I type text "Test123$%" in the Title of Quiz
      And I click on Add Question button
      And I select question type textual
      And I type text in question
      And I click on save button
      Then I check if the quiz is created

      Scenario: Quiz - Title - field is required
        When I type email "elizabethstaging@gmail.com"
        And I type password "Pmej1234"
        And I click Sign in button
        Then Text "TEACHER" appears
        And I click Quizzes
        And I click create new Quiz button
        And I click on Title of the quiz
        And I click outside the Ttile of the Quiz field
        Then error message "This field is required" should appear


  Scenario: Quiz-Title - Min 1 Characters
    When I type email "elizabethstaging@gmail.com"
    And I type password "Pmej1234"
    And I click Sign in button
    Then Text "TEACHER" appears
    And I click Quizzes
    And I click create new Quiz button
    And I type text "T" in the Title of Quiz
    And I click on Add Question button
    And I select question type textual
    And I type text in question
    And I click on save button
    Then I check if the quiz is created

  Scenario: Quiz-Title - Max 1000 Characters
    When I type email "elizabethstaging@gmail.com"
    And I type password "Pmej1234"
    And I click Sign in button
    Then Text "TEACHER" appears
    And I click Quizzes
    And I click create new Quiz button
    And I type text "fgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgccccccccs" in the Title of Quiz
    And I click on Add Question button
    And I select question type textual
    And I type text in question
    And I click on save button
    Then I check if the quiz is created

  Scenario: Quiz-Title - Max + 1characters
    When I type email "elizabethstaging@gmail.com"
    And I type password "Pmej1234"
    And I click Sign in button
    Then Text "TEACHER" appears
    And I click Quizzes
    And I click create new Quiz button
    And I type text "fgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgfgdgsddfgsdfgadfzdfgadgadfgadfgccccccccss" in the Title of Quiz
    And I click on Add Question button
    Then error message "Too long. Should be no more than 1000 character" should appear

#// bug
  Scenario:Quiz - Title - Leading and trailing space characters
    When I type email "elizabethstaging@gmail.com"
    And I type password "Pmej1234"
    And I click Sign in button
    Then Text "TEACHER" appears
    And I click Quizzes
    And I click create new Quiz button
    And I type text "123    " in the Title of Quiz
    And I click on Add Question button
    And I select question type textual
    And I type text in question
    And I click on save button
    Then I check if the quiz is created without the leading and trailing spaces

