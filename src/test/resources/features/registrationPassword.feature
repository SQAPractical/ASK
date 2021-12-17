@FullRegression
Feature: Registration - Password/Confirm Password
  Scenario: Registration - Password/confirm password - Allowable alphanumeric and special characters
    When I navigate to registration page
    And I type first name "Test"
    And I type last name "Student"
    And I type email "gary117@nguyentuki.com"
    And I type group code "AAA"
    And I type password "cat123$%@_"
    And I confirm password "cat123$%@_"
    And I click on Register Me button
    Then Message "You have been Registered." appears

  Scenario: Registration - Password/confirm password - Password and confirm password fields cannot be empty
    When I navigate to registration page
    And I type first name "Test"
    And I type last name "Student"
    And I type email "azathas@filevino.com"
    And I type group code "AAA"
    And I type password ""
    And I confirm password ""
    And I click on Register Me button
    Then Message "This field is required" appears

  Scenario: Registration - Password/confirm password - Password should contain minimum 5 characters
    When I navigate to registration page
    And I type first name "Test"
    And I type last name "Student"
    And I type email "azathas@filevino.com"
    And I type group code "AAA"
    And I type password "12345"
    And I confirm password "12345"
    And I click on Register Me button
    Then Message "You have been Registered." appears

  Scenario: Registration - Password/confirm password - Password should not be less than 5 characters
    When I navigate to registration page
    And I type first name "Test"
    And I type last name "Student"
    And I type email "azathas@filevino.com"
    And I type group code "AAA"
    And I type password "1234"
    And I confirm password "1234"
    And I click on Register Me button
    Then Message "Too short. Should be at least 5 characters" appears

  Scenario: Registration - Password/confirm password - Password should contain maximum 32 characters
    When I navigate to registration page
    And I type first name "Test"
    And I type last name "Student"
    And I type email "gleb2008rashaev@shhongshuhan.com"
    And I type group code "AAA"
    And I type password "Ca1$%Ca1$%Ca1$%Ca1$%Ca1$%Ca1$%Ca"
    And I confirm password "Ca1$%Ca1$%Ca1$%Ca1$%Ca1$%Ca1$%Ca"
    And I click on Register Me button
    Then Message "You have been Registered." appears

  Scenario: Registration - Password/confirm password - Password 32 characters maximum plus one
    When I navigate to registration page
    And I type first name "Test"
    And I type last name "Student"
    And I type email "azathas@filevino.com"
    And I type group code "AAA"
    And I type password "Ca1$%Ca1$%Ca1$%Ca1$%Ca1$%Ca1$%Ca%"
    And I confirm password "Ca1$%Ca1$%Ca1$%Ca1$%Ca1$%Ca1$%Ca%"
    And I click on Register Me button
    Then Message "Too long. Should be no more than 32 characters" appears

  Scenario: Registration - Password/confirm password - Whitespaces are not allowed at the beginning
    When I navigate to registration page
    And I type first name "Test"
    And I type last name "Student"
    And I type email "azathas@filevino.com"
    And I type group code "AAA"
    And I type password " 12345"
    And I confirm password " 12345"
    And I click on Register Me button
    Then Message "Whitespaces are not allowed" appears

  Scenario: Registration - Password/confirm password - Whitespaces are not allowed in the middle
    When I navigate to registration page
    And I type first name "Test"
    And I type last name "Student"
    And I type email "azathas@filevino.com"
    And I type group code "AAA"
    And I type password "123 456"
    And I confirm password "123 456"
    And I click on Register Me button
    Then Message "Whitespaces are not allowed" appears

  Scenario: Registration - Password/confirm password - Whitespaces are not allowed at the end
    When I navigate to registration page
    And I type first name "Test"
    And I type last name "Student"
    And I type email "azathas@filevino.com"
    And I type group code "AAA"
    And I type password "12345 "
    And I confirm password "12345 "
    And I click on Register Me button
    Then Message "Whitespaces are not allowed" appears

  Scenario: Registration - Password/confirm password - Password must match confirm password
    When I navigate to registration page
    And I type first name "Test"
    And I type last name "Student"
    And I type email "azathas@filevino.com"
    And I type group code "AAA"
    And I type password "12345"
    And I confirm password "123456"
    And I click on Register Me button
    Then Message "Entered passwords should match" appears
