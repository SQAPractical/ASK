Feature: Registration - Email
  Scenario: Registration - Email - Other than @ special chars
    When I navigate to registration page
    And I type email "&test@test.com"
    And I click on last name field
    Then Text "Should be a valid email address" appears

  Scenario: Registration - Email - Alphanumeric chars allowed
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Test"
    And I type email "2mounir.tijan@starveyourego.com"
    And I type group code "QQQ"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register me button
    Then Text "You have been Registered." appears

  Scenario: Registration - Email - Field is required
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Test"
    And I type group code "QQQ"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register me button
    Then Text "This field is required" appears

  Scenario: Registration - Email - Whitespaces are not allowed
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Test"
    And I type email "2te st@gmail.com"
    And I type group code "QQQ"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register me button
    Then Text "Should be a valid email address" appears
