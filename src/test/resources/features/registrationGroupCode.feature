<<<<<<< HEAD

Feature: Registration Group - Code
  Scenario: Registration Group - Code - Alphanumeric and special characters
    When I navigate to the registration page
    And I type first name "Test"
    And I type last name "Ng"
    And I type email "123@gm.co"
    And I type group code "123"
    And I type password "12345"
    And I type confirm password "12345"
    And I click Register Me button
    Then I see the message "You have been Registered."

  Scenario: Registration Group - Code - Required field
    When I navigate to the registration page
    And I type first name "Test"
    And I type last name "Ng"
    And I type email "123@gm.co"
    And I type group code ""
    And I type password "12345"
    And I type confirm password "12345"
    And I click Register Me button
    Then I see error message "This field is required"

Feature: Registration - Group Code
  Scenario: Registration - Group Code - Alphanumeric and special char
    When I navigate to registration page
    And I type first name "Test"
    And I type last name "Test"
    And I type email "test@gmail.com"
    And I type group code "A1!"
    And I type password "12345Abc"
    And I type confirm password "12345Abc"
    And I click on Register Me button
    Then Message "You have been Registered." appears

  Scenario: Registration - Group Code - Group code field required, can’t be empty
    When I navigate to registration page
    And I type first name "Test"
    And I type last name "Test"
    And I type email "test@test.com"
    And I type group code ""
    And I type password "12345Abc"
    And I type confirm password "12345Abc"
    And I click on Register Me button
    Then Message "This field is required" appears

  Scenario: Registration - Group code - Min 1 characters
    When I navigate to registration page
    And I type first name "Test1"
    And I type last name "Test1"
    And I type email "test1@test.com"
    And I type group code "A"
    And I type password "12345Abc"
    And I type confirm password "12345Abc"
    And I click on Register Me button
    Then Message "You have been Registered." appears

  Scenario: Registration - Group code - Max 6 characters
    When I navigate to registration page
    And I type first name "Test1"
    And I type last name "Test1"
    And I type email "test1@test.com"
    And I type group code "123456"
    And I type password "12345Abc"
    And I type confirm password "12345Abc"
    And I click on Register Me button
    Then Message "You have been Registered." appears

  Scenario: Registration - Group code - Max + 1 characters
    When I navigate to registration page
    And I type first name "Test2"
    And I type last name "Test2"
    And I type email "test1@test.com"
    And I type group code "1234567"
    And I type password "12345Abc"
    And I type confirm password "12345Abc"
    And I click on Register Me button
    Then Message "Too long. Should be no more than 6 characters" appears

  Scenario: Registration - Group code - Leading spaces
    When I navigate to registration page
    And I type first name "Test3"
    And I type last name "Test3"
    And I type email "test1@test.com"
    And I type group code " 123"
    And I type password "12345Abc"
    And I type confirm password "12345Abc"
    And I click on Register Me button
    Then Message "Whitespaces are not allowed" appears

  Scenario: Registration - Group code - Trailing spaces
    When I navigate to registration page
    And I type first name "Test4"
    And I type last name "Test4"
    And I type email "test1@test.com"
    And I type group code "123 "
    And I type password "12345Abc"
    And I type confirm password "12345Abc"
    And I click on Register Me button
    Then Message "Whitespaces are not allowed" appears

  Scenario: Registration - Group code - Spaces between symbols
    When I navigate to registration page
    And I type first name "Test4"
    And I type last name "Test4"
    And I type email "test1@test.com"
    And I type group code "12 3"
    And I type password "12345Abc"
    And I type confirm password "12345Abc"
    And I click on Register Me button
    Then Message "Whitespaces are not allowed" appears
