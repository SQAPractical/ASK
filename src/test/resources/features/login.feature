<<<<<<< HEAD

Feature: Login

  @login1
  Scenario: valid email and valid password
    Given I open "login" page
    Then I type in "student1@gmail.com" in email
    Then I type in "12345Abc"in password
    Then I click Sign in button
    Then text "new john snow " Appears

  @login2
  Scenario: invalid email and valid password
    Given I open "login" page
    Then I type in "asdasd@gmail.com" in email
    Then I type in "12345Abc"in password
    Then I click Sign in button
    Then text "Authentication failed" Appears

  @login3
  Scenario Outline: valid email and invalid password
    Given I open <pagenName> page
    Then I type in <email> in email
    Then I type in <password>in password
    Then I click Sign in button
    Then text "Authentication failed" Appears
    Examples:
      | pagenName | email                | password  |
      | "login"   | "student1@gmail.com" | "pAsWoRd" |

  @login4
  Scenario: Copy and cut options disable, password display in bullets
    Given I open "login" page
    Then I type in "12345Abc"in password
    Then Copy and cut options disable, password display in bullets

  @login5
  Scenario: black email space not allowed
    Given I open "login" page
    Then I type in <email> in email
    Then I type in "12345Abc"in password
    Then text "Should be a valid email address" Appears

  @login6
  Scenario: trailing email space not allowed
    Given I open "login" page
    And I type  "1 1 1@111.qwe " in email
    Then I type in "12345Abc"in password
    Then text "Should be a valid email address" Appears


  @login7
  Scenario: trailing password space not allowed
    Given I open "login" page
    And I type  "student1@gmail.com" in email
    Then I type  "12345 " with a white space in password
    Then I click on "email"
    Then text "Whitespaces are not allowed" Appears


    @login8
    Scenario: Leading spaces are not allowed
      Given I open "login" page
      And I type  "student1@gmail.com" in email
      Then I type  " " with a white space in password
      Then I click on "email"
      Then text "Whitespaces are not allowed" Appears

























||||||| merged common ancestors
=======
=======
>>>>>>> master
Feature: Login

  Scenario: Valid email and valid password
    Given I open "login" page
    When I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign in button
    And I wait 3 seconds
    Then Text "MyNew Name" appears
    Then Text "TEACHER" appears

  Scenario: Invalid email and valid password
    Given I open "login" page
    When I type email "wtesfdgv@gmail.com"
    And I type password "12345"
    And I click Sign in button
    And I wait 3 seconds
    Then Text "Authentication failed" appears

  Scenario: Copy and cut options disable, password display in bullets
    Given I open "login" page
    When I type password "1234a"
    Then Copy and cut options disable, password display in bullets

  Scenario: Valid email and not corresponding password
    Given I open "login" page
    When I type email "akurashvili.od+2@gmail.com"
    And I type password "123455"
    And I click Sign in button
    And I wait 3 seconds
    Then Text "Authentication failed" appears

  Scenario: Email field - leading spaces are not allowed
    Given I open "login" page
    When I type email " akurashvili.od+2@gmail.com"
    And I type password "1234a"
    And I wait 3 seconds
    Then Text "Should be a valid email address" appears

  Scenario: Email field - trailing spaces are not allowed
    Given I open "login" page
    When I type email "akurashvili.od+2@gmail.com "
    And I type password "1234a"
    And I wait 3 seconds
    Then Text "Should be a valid email address" appears

  Scenario: Password field - leading spaces are not allowed
    Given I open "login" page
    When I type password " 1234a"
    And I type email "akurashvili.od+2@gmail.com"
    And I wait 3 seconds
    Then Text "Whitespaces are not allowed" appears

  Scenario: Password field - trailing spaces are not allowed
    Given I open "login" page
    When I type password "1234a "
    And I type email "akurashvili.od+2@gmail.com"
    And I wait 3 seconds
    Then Text "Whitespaces are not allowed" appears

  Scenario: Email field case insensitive
    Given I open "login" page
    When I type password "1234a "
    And I type email "akurashvili.od+2@gmail.com"
    And I wait 3 seconds
    Then Text "Whitespaces are not allowed" appears

  Scenario: Email field is case insensitive
    Given I open "login" page
    When I type email "AKURASHVILI.od+2@gmail.com"
    And I type password "1234a"
    And I click Sign in button
    And I wait 3 seconds
    Then Text "TEACHER" appears

  Scenario: Password is case sensitive
    Given I open "login" page
    When I type email "AKURASHVILI.od+1@gmail.com"
    And I type password "1234A"
    And I click Sign in button
    And I wait 3 seconds
    Then Text "Authentication failed" appears
