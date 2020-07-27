Feature: Registration - Last Name
  Scenario: Last Name allowable Latin characters.
    Given I open "registration" page
    When I type first name "John"
    And I type last name "Goodstudy"
    And I type email "abc@abc.com" on registration page
    And I type group code "ABC"
    And I type password "12345" on registration page
    And I type confirm password "12345"
    And I click Register Me button
    Then Text "You have been Registered." appears

  Scenario: Last Name field required, can’t be empty.
    Given I open "registration" page
    When I type first name "John"
    And I type email "abc@abc.com" on registration page
    And I type group code "ABC"
    And I type password "12345" on registration page
    And I type confirm password "12345"
    And I click Register Me button
    Then Text "This field is required" appears

  Scenario: Max 254 characters (When the First name 1 char)
    Given I open "registration" page
    When I type first name "J"
    And I type last name "SoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSove"
    And I type email "abc@abc.com" on registration page
    And I type group code "ABC"
    And I type password "12345" on registration page
    And I type confirm password "12345"
    And I click Register Me button
    Then Text "You have been Registered." appears

  Scenario: Verify Length 255 Is Invalid (When the First name 1 char)
    Given I open "registration" page
    When I type first name "J"
    And I type last name "SoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSover"
    And I type email "abc@abc.com" on registration page
    And I type group code "ABC"
    And I type password "12345" on registration page
    And I type confirm password "12345"
    And I click Register Me button
    Then Data too long error message should appear

  Scenario: Min 1 characters
    Given I open "registration" page
    When I type first name "John"
    And I type last name "S"
    And I type email "abc@abc.com" on registration page
    And I type group code "ABC"
    And I type password "12345" on registration page
    And I type confirm password "12345"
    And I click Register Me button
    Then Text "You have been Registered." appears

  Scenario: Verify cannot contain white space
    Given I open "registration" page
    When I type first name "John"
    And I type last name "Good study"
    And I type email "abc@abc.com" on registration page
    And I type group code "ABC"
    And I type password "12345" on registration page
    And I type confirm password "12345"
    And I click Register Me button
    Then Text "Should contain only latin characters" should appear