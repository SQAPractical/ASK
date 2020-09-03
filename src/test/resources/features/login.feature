Feature: Login

  Scenario: Valid email and valid password
    Given I open "login" page
    When I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign in button
    Then Text "MyNew Name" appears
    Then Text "TEACHER" appears

  Scenario: Invalid email and valid password
    Given I open "login" page
    When I type email "wtesfdgv@gmail.com"
    And I type password "12345"
    And I click Sign in button
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
    Then Text "Authentication failed" appears

  Scenario: Email field - leading spaces are not allowed
    Given I open "login" page
    When I type email " akurashvili.od+2@gmail.com"
    And I type password "1234a"
    Then error message should appear

  Scenario: Email field - trailing spaces are not allowed
    Given I open "login" page
    When I type email "akurashvili.od+2@gmail.com "
    And I type password "1234a"
    Then error message should appear

  Scenario: Password field - leading spaces are not allowed
    Given I open "login" page
    When I type password " 1234a"
    And I type email "akurashvili.od+2@gmail.com"
    Then password error message should appear

  Scenario: Password field - trailing spaces are not allowed
    Given I open "login" page
    When I type password "1234a "
    And I type email "akurashvili.od+2@gmail.com"
    Then password error message should appear

  Scenario: Email field case insensitive
    Given I open "login" page
    When I type password "1234a "
    And I type email "akurashvili.od+2@gmail.com"
    Then password error message should appear

  Scenario: Email field is case insensitive
    Given I open "login" page
    When I type email "AKURASHVILI.od+2@gmail.com"
    And I type password "1234a"
    And I click Sign in button
    Then Text "TEACHER" appears

  Scenario: Password is case sensitive
    Given I open "login" page
    When I type email "AKURASHVILI.od+1@gmail.com"
    And I type password "1234A"
    And I click Sign in button
    Then Text "Authentication failed" appears
