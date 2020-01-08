@EndToEnd @Sanity
Feature: User-Last Name
  Scenario: Allowable characters: Alphanumeric $ Special characters
    Given I navigate to "Registration" page
    When I type first name "Oleks"
    And I type last name "Blinov100%"
    And I type email "OOO@ooo.com"
    And I type group code "1234"
    And I type password "12345"
    And I type confirm password "12345"
    Then I click Register me button

  @EndToEnd @Sanity
    Scenario: Last Name field required, can’t be empty
      Given I navigate to "Registration" page
      When I type first name "Oleks"
      And I type last name ""
      And I type email "OOO@ooo.com"
      And I type group code "1234"
      And I type password "12345"
      And I type confirm password "12345"
      Then I click Register me button

  @EndToEnd @Sanity
    Scenario: White spaces are not allowed
      Given I navigate to "Registration" page
      When I type first name "Oleks"
      And I type last name " "
      And I type email "OOO@ooo.com"
      And I type group code "1234"
      And I type password "12345"
      And I type confirm password "12345"
      Then I click Register me button


  @EndToEnd @Sanity
    Scenario: Max 254 characters (When the First name 1 char)
      Given I navigate to "Registration" page
      When I type first name "O"
      And I type last name "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111"
      And I type email "OOO@ooo.com"
      And I type group code "1234"
      And I type password "12345"
      And I type confirm password "12345"
      Then I click Register me button


  @EndToEnd @Sanity
    Scenario: 255 characters (When the First name 1 char)
      Given I navigate to "Registration" page
      When I type first name "O"
      And I type last name "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111"
      And I type email "OOO@ooo.com"
      And I type group code "1234"
      And I type password "12345"
      And I type confirm password "12345"
      Then I click Register me button


  @EndToEnd @Sanity
    Scenario: Min 1 characters
      Given I navigate to "Registration" page
      When I type first name "Oleks"
      And I type last name "B"
      And I type email "OOO@ooo.com"
      And I type group code "1234"
      And I type password "12345"
      And I type confirm password "12345"
      Then I click Register me button




