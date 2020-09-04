Feature: Login
  @login1
  Scenario: Valid email and valid password
    Given I open "login" page
    When I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign in button
    Then Text "TEACHER" appears

  @login2
  Scenario: Invalid email and valid password
    Given I open "login" page
    When I type email "aaaabbbbbccc@gmail.com"
    And I type password "12345"
    And I click Sign in button
    Then Text "Authentication failed" appears

  @login3
  Scenario: Valid email and invalid password
    Given I open "login" page
    When I type email "qa.sofi@gmail.com"
    And I type password "aaaaa"
    And I click Sign in button
    Then Text "Authentication failed" appears

  @login4
  Scenario: Copy and cut options disable, password display in bullets
    Given I open "login" page
    When I type password "12345"
    Then Copy and cut options disable, password display in bullets

  @login5
  Scenario: Email filed - Leading spaces are not allowed
    Given I open "login" page
    When I type email " qa.sofi@gmail.com"
    And I type password "aaaaa"
    And I click Sign in button
    Then Text "Should be a valid email address" appears

  @login6
  Scenario: Email filed - trailing spaces are not allowed
    Given I open "login" page
    When I type email "qa.sofi@gmail.com "
    And I type password "aaaaa"
    And I click Sign in button
    Then Text "Should be a valid email address" appears

  @login7
  Scenario: Password field - Leading spaces are not allowed
    Given I open "login" page
    When I type email "qa.sofi@gmail.com"
    And I type password " aaaaa"
    And I click Sign in button
    Then Text "Whitespaces are not allowed" appears

  @login8
  Scenario: Password field - trailing spaces are not allowed
    Given I open "login" page
    When I type email "qa.sofi@gmail.com"
    And I type password "aaaaa "
    And I click Sign in button
    Then Text "Whitespaces are not allowed" appears

  @login9
  Scenario: Email field Case insensitive
    Given I open "login" page
    When I type email "qa.sofi@g" and field case is insensetive

  @login10
  Scenario: Password field Case sensitive
    Given I open "login" page
    When I type email "qa.sofi@g"
    And