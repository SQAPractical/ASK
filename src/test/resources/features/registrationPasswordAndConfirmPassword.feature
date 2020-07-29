Feature:Registration password/Confirm password ACJ-200

  Scenario: Registration - password/confirm password - alphanumeric and special characters ACJ-201
    Given I open "registration" page
    When I type first name "Dima"
    And I type last name "March"
    And I type group code "RS7"
    And I type email "abc@abc.com" on registration page
    And I type password "abc123#" on registration page
    And I type confirm password "abc123#"
    And I click Register Me button
    Then Text "You have been Registered." should appear

  Scenario: Registration - Password/Confirm password - Password field is required ACJ-248
    Given I open "registration" page
    When I type first name "Dima"
    And I type last name "March"
    And I type group code "RS7"
    And I type email "abc@abc.com" on registration page
    And I type confirm password "abc123#"
    And I click Register Me button
    Then Text "This field is required" should appear

  Scenario: Registration password/Confirm password - minimum 5 characters ACJ-250
    Given I open "registration" page
    When I type first name "Dima"
    And I type last name "March"
    And I type group code "RS7"
    And I type email "abc@abc.com" on registration page
    And I type password "12345" on registration page
    And I type confirm password "12345"
    And I click Register Me button
    Then Text "You have been Registered." should appear

#    need to be created                                                                             ???
  Scenario: Registration password/Confirm password - not allowed less then 5 characters ACJ-***
    Given I open "registration" page
    When I type first name "Dima"
    And I type last name "March"
    And I type group code "RS7"
    And I type email "abc@abc.com" on registration page
    And I type password "1234" on registration page
    And I type confirm password "1234"
    Then Text "Too short. Should be at least 5 characters" should appear

  Scenario: Registration password/Confirm password - max 32 characters ACJ-252
    Given I open "registration" page
    When I type first name "Dima"
    And I type last name "March"
    And I type group code "RS7"
    And I type email "abc@abc.com" on registration page
    And I type password "12345678912345678912345678912345" on registration page
    And I type confirm password "12345678912345678912345678912345"
    And I click Register Me button
    Then Text "You have been Registered." should appear

#    need to be created                                                                             ???
  Scenario: Registration password/Confirm password - not allowed 33 characters ACJ-***
    Given I open "registration" page
    When I type first name "Dima"
    And I type last name "March"
    And I type group code "RS7"
    And I type email "abc@abc.com" on registration page
    And I type password "123456789123456789123456789123456" on registration page
    And I type confirm password "123456789123456789123456789123456"
    And I click Register Me button
    Then Text "Too long. Should be no more than 32 characters" should appear

#   but here is a bug (its allowed unlimited quantity of characters)

  Scenario:  Registration - Confirm password - whites spaces aren't allowed ACJ-290
    Given I open "registration" page
    When I type first name "Dima"
    And I type last name "March"
    And I type group code "RS7"
    And I type email "abc@abc.com" on registration page
    And I type password "abc123" on registration page
    And I type confirm password "abc 123"
    Then Text "Whitespaces are not allowed" should appear

  Scenario:  Registration - Password whites spaces aren't allowed ACJ-***    (first)
    Given I open "registration" page
    When I type first name "Dima"
    And I type last name "March"
    And I type group code "RS7"
    And I type email "abc@abc.com" on registration page
    And I type password "abc 123" on registration page
    And I type confirm password "abc123"
    Then Text "Whitespaces are not allowed" should appear

  Scenario:  "Registration - Password/Confirm password" - password must match confirm password ACJ-292
    Given I open "registration" page
    When I type first name "Dima"
    And I type last name "March"
    And I type group code "RS7"
    And I type email "abc@abc.com" on registration page
    And I type password "12345" on registration page
    And I type confirm password "12345a"
    And I click Register Me button
    Then Text "Entered passwords should match" should appear