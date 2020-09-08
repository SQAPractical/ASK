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