Feature: Registration - Last Name
  Scenario: Last Name allowable Latin characters.
    Given I open "registration" page
    When I type "John" into First Name field
    And I type "Goodstudy" into Last Name field
    And I type "any@any.com" into email field
    And I type "ABC" into Group Code field
    And I type "12345" into Password field
    And I type "12345" into Confirm Password field
    And I click Register Me button
    Then Text "You have been Registered." should appear

  Scenario: Last Name field required, can’t be empty.
    Given I open "registration" page
    When I type "John" into First Name field
    And I type "any@any.com" into email field
    And I type "ABC" into Group Code field
    And I type "12345" into Password field
    And I type "12345" into Confirm Password field
    And I click Register Me button
    Then Text "This field is required" should appear

  Scenario: Max 254 characters (When the First name 1 char)
    Given I open "registration" page
    When I type "J" into First Name field
    And I type "SoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSove" into Last Name field
    And I type "any@any.com" into email field
    And I type "ABC" into Group Code field
    And I type "12345" into Password field
    And I type "12345" into Confirm Password field
    And I click Register Me button
    Then Text "You have been Registered." should appear

  Scenario: Verify Length 255 Is Invalid
    Given I open "registration" page
    When I type "J" into First Name field
    And I type "SoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSoverylongSover" into Last Name field
    And I type "any@any.com" into email field
    And I type "ABC" into Group Code field
    And I type "12345" into Password field
    And I type "12345" into Confirm Password field
    And I click Register Me button
    Then Data too long error message should appear

  Scenario: Min 1 characters
    Given I open "registration" page
    When I type "John" into First Name field
    And I type "S" into Last Name field
    And I type "any@any.com" into email field
    And I type "ABC" into Group Code field
    And I type "12345" into Password field
    And I type "12345" into Confirm Password field
    And I click Register Me button
    Then Text "You have been Registered." should appear

  Scenario: Verify cannot contain white space
    Given I open "registration" page
    When I type "John" into First Name field
    And I type "Good study" into Last Name field
    And I type "any@any.com" into email field
    And I type "ABC" into Group Code field
    And I type "12345" into Password field
    And I type "12345" into Confirm Password field
    And I click Register Me button
    Then Text "Should contain only latin characters" should appear