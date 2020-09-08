Feature: Registration Last Name

  Scenario: text field is Alphanumeric and Special Character
    When I open "registration" page
    Then I type first name "Anna"
    And I type last name "Ku1@"
    And I type email "test@gmail.com" on registration page
    And I type group code "abc"
    And I type password "12345" on registration page
    And I type confirm password "12345"
    Then I click register me button
    Then Text "You have been Registered." appears

  Scenario: Last name must be 1 char or more
    When I open "registration" page
    Then I type first name "Anna"
    And I type last name "K"
    And I type email "test@gmail.com" on registration page
    And I type group code "abc"
    And I type password "12345" on registration page
    And I type confirm password "12345"
    Then I click register me button
    Then Text "You have been Registered." appears

  Scenario: Last name must be 254 char max
    When I open "registration" page
    Then I type first name "Anna"
    And I type last name "sususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususu"
    And I type email "test@gmail.com" on registration page
    And I type group code "abc"
    And I type password "12345" on registration page
    And I type confirm password "12345"
    Then I click register me button
    Then Text "You have been Registered." appears

  Scenario: Last name is a required field
    When I open "registration" page
    Then I type first name "Anna"
    And I click on element last name
    Then I click on email text field
    And I type email "test@gmail.com" on registration page
    And I type group code "abc"
    And I type password "12345" on registration page
    And I type confirm password "12345"
    Then I click register me button
    Then Text "This field is required" is displayed

  Scenario: Last name Max char + 1
    When I open "registration" page
    Then I type first name "Anna"
    And I type last name "1sususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususususu"
    And I type email "test@gmail.com" on registration page
    And I type group code "abc"
    And I type password "12345" on registration page
    And I type confirm password "12345"
    Then I click register me button
    Then Text "Too long. Should be no more than 254 characters" is displayed

  Scenario: Last name Whitespaces are not allowed
    When I open "registration" page
    Then I type first name "Anna"
    And I type last name " S"
    And I type email "test@gmail.com" on registration page
    And I type group code "abc"
    And I type password "12345" on registration page
    And I type confirm password "12345"
    Then I click register me button
    Then Text "Whitespaces are not allowed" is displayed
