@Regression
Feature: Assignment group

  Scenario Outline: Assignment group
    Given I open login page
    When I type email "<email>"
    And I type password "<password>"
    And I click Sign in button
    Then text "<text>" appears
    When I click on assignments button
    And I click on create new assignment button
    And I click on Group Filter
    And I click on Group Number
    Then element dashboard contains text "1111"
    Examples:
      | email                         | password | text    |
      | a.gnedq@bloglurichardnet.info | 12345    | TEACHER |


  Scenario: Assignment group same from teacher account account
    Given I open login page
    When I type email "a.gnedq@bloglurichardnet.info"
    When I type password "12345"
    And I click Sign in button
    Then text "TEACHER" appears
    When I click on "Assignments"
    And I click on "Create new assignment"
    And I click on Group Filter
    And I click on Group Number
    And I click on Select All
    And I click on Quiz to assign
    And I click on Quiz _N q
    And I click on Give assignment button
    Then text "Quiz: _N q" appears

  Scenario: Student receives new assignment
    Given I open login page
    When I type email "ison@crafttheweb.com"
    When I type password "12345"
    And I click Sign in button
    Then text "STUDENT" appears
    When I click on Go to my assignments button
    Then text "Quiz: _N q" appears



      #  THIS 2 Scenario Outline not needed
#  Scenario Outline: login
#    Given I open login page
#    When I type email "<email>"
#    And I type password "<password>"
#    And I click Sign in button
#    Then text "<text>" appears
#    Examples:
#      | email                     | password | text |
#    |ebossaliasgh@wgdmensmuscle.com | 12345 | STUDENT|
#
#
#    Scenario Outline: password displays in bullets
#      Given I open login page
#      When I type email "<email>"
#      And I type password "<password>"
#      Then password displays in bullets
#      Examples:
#        | email                       | password|
#      |ebossaliasgh@wgdmensmuscle.com | 12345 |
