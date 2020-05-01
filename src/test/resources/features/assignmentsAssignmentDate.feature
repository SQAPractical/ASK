Feature: Assignments-Assignment date

  Scenario:  Verifying that the date of assignment given by teacher is the same as the date of assignment
    received by student
    Given I open login page
    When I type email "lenam84@yandex.ru"
    And I type password "123456"
    And I click Sign in button
    Then text "TEACHER" appears
    Then I click on Assignments
#    Then text "List of Assignments" appears
    Then List of Assignments appears
    Then I click Create New Assignment button

