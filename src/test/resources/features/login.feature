Feature: Login
  Scenario: Valid email, valid password
    Given I open "login" page
    When I type email "assessment.portnov@gmail.com"
    And I type password "12345"
    And I click Sign in button
    Then Text "Jane Doe" appears

  Scenario: invalid email, valid password
    Given I open "login" page
    When I type email "qa.soefdfi@gmail.com"
    And I type password "12345"
    And I click Sign in button
    Then Text "Authentication failed. User not found or password does not match" appears

  Scenario: Login - invalid format email
    Given I open "login" page
    When I type email "gal.gmail.com"
    And I type password "12345"
    Then Text "Should be a valid email address" appears

  Scenario: Login- empty email field
    Given I open "login" page
    When I type email ""
    And I type password "12345"
    And I click Sign in button
    Then Text "This field is required" appears

  Scenario: Login- Empty Password Field
    Given I open "login" page
    When I type email "galyusyk@gmail.com"
    And I type password ""
    And I click Sign in button
    Then Text "This field is required" appears

  Scenario:  Login -Email - Leading spaces not allowed
    Given I open "login" page
    When I type email " test@gmail.com"
    And I type password "Tester@123"
    And I click Sign in button
    Then Text "Should be a valid email" appears

  Scenario:  Login -Email - trailing spaces not allowed
    Given I open "login" page
    When I type email "test@gmail.com "
    And I type password "Tester@123"
    And I click Sign in button
    Then Text "Should be a valid email" appears

  Scenario: password displays in bullets, copy, cut options disabled
    Given I open "login" page
    And I type password "12345"
    Then password displays in bullets, copy, cut options disabled

  Scenario:  Login -password - trailing spaces not allowed
    Given I open "login" page
    When I type email "test@gmail.com"
    And I type password "Tester@123 "
    And I click Sign in button
    Then Text "Whitespaces are not allowed" appears

  Scenario:  Login -password - Leading spaces not allowed
    Given I open "login" page
    When I type email "test@gmail.com"
    And I type password " Tester@123"
    And I click Sign in button
    Then Text "Whitespaces are not allowed" appears