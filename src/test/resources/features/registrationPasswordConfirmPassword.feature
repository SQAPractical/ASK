Feature: Registration - Password/Confirm password
  Scenario: Registration - Password/Confirm password - Alphanumeric and special characters
    When I navigate to registration page
    And I type first name "test"
    And I type last name "Test"
    And I type email "test@test.com"
    And I type group code "qqq"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register me button
    Then Text "You have been Registered." appears


  Scenario: Registration - Password/Confirm password - Field is required
    When I navigate to registration page
    And I type first name "test"
    And I type last name "Test"
    And I type email "test@test.com"
    And I type group code "qqq"
    And I click Register me button
    Then Text "This field is required" appears

  Scenario: Registration - Password/Confirm password - Minimum 5 characters
    When I navigate to registration page
    And I type first name "test"
    And I type last name "Test"
    And I type email "test@test.com"
    And I type group code "qqq"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register me button
    Then Text "You have been Registered." appears

  Scenario: Registration - Password/Confirm password - Min -1 (4) char not allowed
    When I navigate to registration page
    And I type first name "test"
    And I type last name "Test"
    And I type email "test@test.com"
    And I type group code "qqq"
    And I type password "1234"
    And I confirm password "1234"
    And I click Register me button
    Then Text "Too short. Should be at least 5 characters" appears

  Scenario: Registration - Password/Confirm password - Maximum 32 characters
    When I navigate to registration page
    And I type first name "test"
    And I type last name "Test"
    And I type email "test@test.com"
    And I type group code "qqq"
    And I type password "12345678911234567892123456789312"
    And I confirm password "12345678911234567892123456789312"
    And I click Register me button
    Then Text "You have been Registered." appears

  Scenario: Registration - Password/Confirm password - Max+1 (33) characters
    When I navigate to registration page
    And I type first name "test"
    And I type last name "Test"
    And I type email "test@test.com"
    And I type group code "qqq"
    And I type password "123456789112345678921234567893123"
    And I confirm password "123456789112345678921234567893123"
    And I click Register me button
    Then Text "Too long. Should be no more than 32 characters" appears


  Scenario: Registration - Password/Confirm password - Whitespaces are not allowed
    When I navigate to registration page
    And I type first name "test"
    And I type last name "Test"
    And I type email "test@test.com"
    And I type group code "qqq"
    And I type password "test 100%"
    And I confirm password "test 100%"
    And I click Register me button
    Then Text "Whitespaces are not allowed" appears

  Scenario: Registration - Password/Confirm password - Password doesn't match
    When I navigate to registration page
    And I type first name "test"
    And I type last name "Test"
    And I type email "test@test.com"
    And I type group code "qqq"
    And I type password "test100"
    And I confirm password "tess100"
    And I click Register me button
    Then Text "Entered passwords should match" appears





