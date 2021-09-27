@FullRegression
Feature: Registration - Email
  @Smoke
  Scenario: Registration - Email - Alphanumeric characters and @ special char
    When I navigate to registration page
    And I type first name "Petr"
    And I type last name "Petrov"
    And I type email "test123@gmail.com"
    And I type group code "zxc"
    And I type password "12345"
    And I confirm password "12345"
    And I click on Register me button
    Then Text "You have been Registered" appears

  Scenario: Registration Email - Email field required
    When I navigate to registration page
    And I type first name "Petr"
    And I type last name "Petrov"
    And I type email ""
    And I type group code "zxc"
    And I type password "12345"
    And I confirm password "12345"
    And I click on Register me button
    Then Text "This field is required" appears

    Scenario: Registration - Email - Whitespaces are not allowed (in the middle)
      When I navigate to registration page
      And I type first name "Petr"
      And I type last name "Petrov"
      And I type email "test 123@gmail.com"
      And I type group code "zxc"
      And I type password "12345"
      And I confirm password "12345"
      And I click on Register me button
      Then Text "Should be a valid email address" appears

    Scenario: Registration - Email - Whitespaces are not allowed (at the beggining)
      When I navigate to registration page
      And I type first name "Petr"
      And I type last name "Petrov"
      And I type email " test123@gmail.com"
      And I type group code "zxc"
      And I type password "12345"
      And I confirm password "12345"
      And I click on Register me button
      Then Text "Should be a valid email address" appears

    Scenario: Registration - Email - Whitespaces are not allowed (at the end)
      When I navigate to registration page
      And I type first name "Petr"
      And I type last name "Petrov"
      And I type email "test123@gmail.com "
      And I type group code "zxc"
      And I type password "12345"
      And I confirm password "12345"
      And I click on Register me button
      Then Text "Should be a valid email address" appears

  Scenario: Registration - Registration Email - Email contains 2@ signs
    When I navigate to registration page
    And I type first name "Petr"
    And I type last name "Petrov"
    And I type email "test123@@gmail.com "
    And I type group code "zxc"
    And I type password "12345"
    And I confirm password "12345"
    And I click on Register me button
    Then Text "Should be a valid email address" appears

  Scenario: Registration - Registration Email - Email does not contains @ signs
    When I navigate to registration page
    And I type first name "Petr"
    And I type last name "Petrov"
    And I type email "test123gmail.com "
    And I type group code "zxc"
    And I type password "12345"
    And I confirm password "12345"
    And I click on Register me button
    Then Text "Should be a valid email address" appears








