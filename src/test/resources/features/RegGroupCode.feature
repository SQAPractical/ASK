Feature: Registration - Group code
  Scenario: Allowable characters: Alphanumeric
    Given I open "registration" page
    When I type name "Victor"
    And I type Last Name "Victorov"
    And I type email "student10@gmail.com" on registration page
    And I type group code "Abc1"
    And I type password "12345" on registration page
    And I type confirm password "12345"
    And I click Register Me button
    Then text "You have been Registered" appears

    Scenario: Allowable characters: Alphanumeric Special char
      Given I open "registration" page
      When I type name "Victor"
      And I type Last Name "Victorov"
      And I type email "student10@gmail.com" on registration page
      And I type group code "Abc1*"
      And I type password "12345" on registration page
      And I type confirm password "12345"
      And I click Register Me button
      Then text "You have been Registered" appears

      Scenario: Group code field can’t be empty
        Given I open "registration" page
        When I type name "Victor"
        And I type Last Name "Victorov"
        And I type email "student10@gmail.com" on registration page
        And I type password "12345" on registration page
        And I type confirm password "12345"
        And I click Register Me button
        Then text "This field is required" appears

  Scenario: Group Code- Min 1 character
    Given I open "registration" page
    When I type name "Victor"
    And I type Last Name "Victorov"
    And I type email "student10@gmail.com" on registration page
    And I type group code "1"
    And I type password "12345" on registration page
    And I type confirm password "12345"
    And I click Register Me button
    Then text "You have been Registered" appears

  Scenario: Group Code- Max 6 characters (max boundary)
    Given I open "registration" page
    When I type name "Victor"
    And I type Last Name "Victorov"
    And I type email "student10@gmail.com" on registration page
    And I type group code "1234567"
    And I type group code "1234567"
    And I type password "12345" on registration page
    And I type confirm password "12345"
    Then text "Too long. Should be no more than 6 characters" appears

  Scenario: Group Code- white spaces are not allowed
    Given I open "registration" page
    When I type name "Victor"
    And I type Last Name "Victorov"
    And I type email "student10@gmail.com" on registration page
    And I type group code "adc 1"
    Then text "Whitespaces are not allowed" appears



















