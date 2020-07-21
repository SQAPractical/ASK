Feature: Registration - Last name
  Scenario: Verify if user can register account with Alphanumeric & Special characters in Last name
    Given I navigate to "registration" page
    And I type First Name "test"
    And I type Last Name "abc123!@#"
    And I type Email "tester111@gmail.com"
    And I type Group Code "XYZ"
    And I type Password "12345"
    And I type Confirm Password "12345"
    And I click Register Me button
    Then text "You have been Registered." appears

  Scenario: Verify if user can register when last name consists of 254 characters
    Given I navigate to "registration" page
    And I type First Name "test"
    And I type Last Name "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb"
    And I type Email "tester111@gmail.com"
    And I type Group Code "XYZ"
    And I type Password "12345"
    And I type Confirm Password "12345"
    And I click Register Me button
    Then text "You have been Registered." appears

  Scenario: Verify if user can register with 1 character in Last name
    Given I navigate to "registration" page
    And I type First Name "test"
    And I type Last Name "a"
    And I type Email "tester111@gmail.com"
    And I type Group Code "XYZ"
    And I type Password "12345"
    And I type Confirm Password "12345"
    And I click Register Me button
    Then text "You have been Registered." appears

  Scenario: Verify if user can't register when "last name" field contains white spaces
    Given I navigate to "registration" page
    And I type First Name "test"
    And I type Last Name "abc xyz"
    And I type Email "tester111@gmail.com"
    And I type Group Code "XYZ"
    And I type Password "12345"
    And I type Confirm Password "12345"
    And I click Register Me button
    Then text "Whitespaces are not allowed" appears

  Scenario: Verify if user can't register when Last name contains 255 characters
    Given I navigate to "registration" page
    And I type First Name "test"
    And I type Last Name "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb"
    And I type Email "tester111@gmail.com"
    And I type Group Code "XYZ"
    And I type Password "12345"
    And I type Confirm Password "12345"
    And I click Register Me button
    Then text "Too long. Should be max 254 characters" appears

  Scenario: Verify if user can't register account without Last name
    Given I navigate to "registration" page
    And I type First Name "test"
    And I type Last Name ""
    And I type Email "tester111@gmail.com"
    And I type Group Code "XYZ"
    And I type Password "12345"
    And I type Confirm Password "12345"
    And I click Register Me button
    Then text "This field is required" appears



